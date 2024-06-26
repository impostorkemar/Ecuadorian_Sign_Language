from fastapi import APIRouter, HTTPException, Request
from models.Lexer import Lexer
from config.db import SessionLocal, meta
from models.user import users, palabra, caracter
from schemas.user import DatabaseConfig
from decouple import config
import os
from PIL import Image, ImageSequence
from moviepy.editor import *
from moviepy.editor import VideoFileClip

def video_duration(filepath):
    with VideoFileClip(filepath) as clip:
        return clip.duration


def convert_gif_to_video(gif_path, video_path):
    clip = VideoFileClip(gif_path)
    clip.write_videofile(video_path, fps=15)


# Define la ruta base
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)
BASE_GIF_PATH = os.path.join(ROOT_DIR, "gifs")
BASE_VIDEO_PATH = os.path.join(ROOT_DIR, "videos")

lexer_router = APIRouter()

def gif_duration(filepath):
    with Image.open(filepath) as img:
        frames = [frame.copy() for frame in ImageSequence.Iterator(img)]
        duration = sum(frame.info['duration'] for frame in frames) / 1000  # Convertir a segundos
    return duration

def find_gif_for_token(token_type: str, value: str, base_url: str):
    session = SessionLocal()
    try:
        if token_type == "PALABRA":
            result = session.query(palabra).filter(palabra.c.palabra == value).first()
            if result:
                path_to_gif = os.path.join(BASE_GIF_PATH, "palabras", result.gif)
                duration = gif_duration(path_to_gif)
                return {
                    "url": f"{base_url}/gifs/palabras/{result.gif}",
                    "duration": duration
                }
            else:
                gifs = []
                durations = []
                for char in value:
                    char_result = session.query(caracter).filter(caracter.c.caracter == char).first()
                    if char_result:
                        path_to_gif = os.path.join(BASE_GIF_PATH, "caracteres", char_result.gif)
                        duration = gif_duration(path_to_gif)
                        gifs.append(f"{base_url}/gifs/caracteres/{char_result.gif}")
                        durations.append(duration)
                    else:
                        gifs.append(f"{base_url}/gifs/caracteres/vacio.gif")
                        durations.append(0.5)
                return {
                    "urls": gifs,
                    "durations": durations
                }

        elif token_type in ["LETRA", "DIGITO"]:
            result = session.query(caracter).filter(caracter.c.caracter == value).first()
            if result:
                path_to_gif = os.path.join(BASE_GIF_PATH, "caracteres", result.gif)
                duration = gif_duration(path_to_gif)
                return {
                    "url": f"{base_url}/gifs/caracteres/{result.gif}",
                    "duration": duration
                }
    finally:
        session.close()

@lexer_router.post("/analyze-text/", tags=["logic"])
def analyze_text(text: str, request: Request):
    base_url = str(request.base_url)[:-1]  # Removes trailing slash
    tokens = perform_lexical_analysis(text)

    for token in tokens:
        gif_data = find_gif_for_token(token["tipo"], token["valor"], base_url)
        token["gif"] = gif_data

    return {"tokens": tokens}

def perform_lexical_analysis(text: str):
    text = text.replace('.', '').replace(',', '').replace(':', '').replace('/', '').strip()
    if not text:
        raise HTTPException(status_code=400, detail="El texto proporcionado está vacío o solo contiene caracteres no permitidos.")

    lexer_instance = Lexer(text)
    lexer_instance.lexer_analyzer()
    tokens_output = [
        {"tipo": token.tipo.name, "representación": token.tipo.value, "valor": token.valor}
        for token in lexer_instance.tokens
    ]
    return tokens_output

router = APIRouter()

@router.get("/database_config", response_model=DatabaseConfig, tags=["logic"])
def get_database_config():
    USER = config('USER')
    PWD = config('PWD')
    DB_NAME = config('DB_NAME')
    
    return {
        "USER": USER,
        "PWD": PWD,
        "DB_NAME": DB_NAME
    }

@router.put("/set_database_config", tags=["logic"])
def set_database_config(USER: str, PWD: str, DB_NAME: str):
    # Establecer la ruta al archivo .env

    current_dir = os.path.dirname(os.path.realpath(__file__))
    base_dir = os.path.dirname(current_dir)
    env_path = os.path.join(base_dir, "config", ".env")

    # Leer el archivo .env y actualizar o agregar las variables
    with open(env_path, 'r') as file:
        lines = file.readlines()

    with open(env_path, 'w') as file:
        for line in lines:
            if line.startswith("USER="):
                line = f"USER={USER}\n"
            elif line.startswith("PWD="):
                line = f"PWD={PWD}\n"
            elif line.startswith("DB_NAME="):
                line = f"DB_NAME={DB_NAME}\n"
            file.write(line)

    # Confirmación de éxito
    return {"status": "success", "message": "Configurations updated successfully"}

@router.get("/convert-gifs-to-videos/", tags=["logic"])
def convert_gifs_to_videos():

    # Rutas base para GIFs y videos
    BASE_VIDEO_PATH = os.path.join(ROOT_DIR, "videos")
    CARACTERES_GIF_PATH = os.path.join(BASE_GIF_PATH, "caracteres")
    CARACTERES_VIDEO_PATH = os.path.join(BASE_VIDEO_PATH, "caracteres")
    
    PALABRAS_GIF_PATH = os.path.join(BASE_GIF_PATH, "palabras")
    PALABRAS_VIDEO_PATH = os.path.join(BASE_VIDEO_PATH, "palabras")

    # Crear directorios si no existen
    os.makedirs(CARACTERES_VIDEO_PATH, exist_ok=True)
    os.makedirs(PALABRAS_VIDEO_PATH, exist_ok=True)

    # Convertir los GIFs de caracteres a videos
    for filename in os.listdir(CARACTERES_GIF_PATH):
        if filename.endswith(".gif"):
            gif_path = os.path.join(CARACTERES_GIF_PATH, filename)
            video_filename = filename.replace(".gif", ".mp4")
            video_path = os.path.join(CARACTERES_VIDEO_PATH, video_filename)
            convert_gif_to_video(gif_path, video_path)
    
    # Convertir los GIFs de palabras a videos
    for filename in os.listdir(PALABRAS_GIF_PATH):
        if filename.endswith(".gif"):
            gif_path = os.path.join(PALABRAS_GIF_PATH, filename)
            video_filename = filename.replace(".gif", ".mp4")
            video_path = os.path.join(PALABRAS_VIDEO_PATH, video_filename)
            convert_gif_to_video(gif_path, video_path)

    return {"status": "success", "message": "GIFs successfully converted to videos"}

def find_video_for_token(token_type: str, value: str, base_url: str):
    session = SessionLocal()
    try:
        if token_type == "PALABRA":
            result = session.query(palabra).filter(palabra.c.palabra == value).first()
            if result:
                path_to_video = os.path.join(BASE_VIDEO_PATH, "palabras", result.video)
                return {
                    "url": f"{base_url}/videos/palabras/{result.video}",
                }
            else:
                videos = []
                for char in value:
                    char_result = session.query(caracter).filter(caracter.c.caracter == char).first()
                    if char_result:
                        path_to_video = os.path.join(BASE_VIDEO_PATH, "caracteres", char_result.video)
                        videos.append(f"{base_url}/videos/caracteres/{char_result.video}")
                    else:
                        videos.append(f"{base_url}/videos/caracteres/vacio.webm")  # Asegúrate de que sea .webm
                return {
                    "urls": videos,
                }

        elif token_type == "LETRA":
            result = session.query(caracter).filter(caracter.c.caracter == value).first()
            if result:
                path_to_video = os.path.join(BASE_VIDEO_PATH, "caracteres", result.video)
                return {
                    "url": f"{base_url}/videos/caracteres/{result.video}",
                }

        elif token_type == "DIGITO":
            if len(value) > 1:  # Si el valor tiene más de un dígito
                videos = []
                for digit in value:  # Iteramos sobre cada dígito
                    digit_result = session.query(caracter).filter(caracter.c.caracter == digit).first()
                    if digit_result:
                        path_to_video = os.path.join(BASE_VIDEO_PATH, "caracteres", digit_result.video)
                        videos.append(f"{base_url}/videos/caracteres/{digit_result.video}")
                    else:
                        videos.append(f"{base_url}/videos/caracteres/vacio.webm")  # Asegúrate de que sea .webm
                return {
                    "urls": videos,
                }
            else:  # Para un solo dígito, la lógica permanece igual
                result = session.query(caracter).filter(caracter.c.caracter == value).first()
                if result:
                    path_to_video = os.path.join(BASE_VIDEO_PATH, "caracteres", result.video)
                    return {
                        "url": f"{base_url}/videos/caracteres/{result.video}",
                    }
    finally:
        session.close()






@lexer_router.post("/analyze-text-videos/", tags=["logic"])
def analyze_text_for_videos(text: str, request: Request):
    base_url = str(request.base_url)[:-1]  # Removes trailing slash
    tokens = perform_lexical_analysis(text)

    for token in tokens:
        video_data = find_video_for_token(token["tipo"], token["valor"], base_url)  # Usamos la nueva función aquí
        token["video"] = video_data  # Cambiamos "gif" a "video"

    return {"tokens": tokens}

import os
import subprocess

@router.get("/convert-videos-to-webm/", tags=["logic"])
def convert_videos_to_webm():
    # Rutas para la carpeta de palabras
    input_folder_palabras = "videos/palabras"
    output_folder_palabras = "videos/palabras"
    convert_videos(input_folder_palabras, output_folder_palabras)

    # Rutas para la carpeta de caracteres
    input_folder_caracteres = "videos/caracteres"
    output_folder_caracteres = "videos/caracteres"
    convert_videos(input_folder_caracteres, output_folder_caracteres)

    return {"status": "success", "message": "Videos successfully converted to webm"}

def convert_videos(input_folder, output_folder):
    os.makedirs(output_folder, exist_ok=True)

    for filename in os.listdir(input_folder):
        if filename.endswith(".mp4"):
            input_path = os.path.join(input_folder, filename)
            output_filename = filename.replace(".mp4", ".webm")
            output_path = os.path.join(output_folder, output_filename)

            convert_video_to_webm(input_path, output_path)

def convert_video_to_webm(input_path, output_path):
    ffmpeg_cmd = [
    "C:\\ffmpeg\\bin\\ffmpeg.exe",
    "-i", input_path,
    "-c:v", "libvpx-vp9",  # Usar códec VP9
    "-b:v", "1M",
    "-c:a", "libvorbis",
    "-b:a", "128k",
    "-movflags", "+faststart",  # Habilitar carga progresiva
    output_path
    ]


    try:
        subprocess.run(ffmpeg_cmd, check=True)
        print(f"Conversión exitosa de {input_path} a {output_path}")
    except subprocess.CalledProcessError as e:
        print(f"Error al convertir {input_path} a {output_path}. Detalles: {e}")

