from fastapi import APIRouter, HTTPException, Request
from models.Lexer import Lexer
from config.db import SessionLocal, meta
from models.user import users, palabra, caracter
from schemas.user import DatabaseConfig
from decouple import config
import os

lexer_router = APIRouter()

def find_gif_for_token(token_type: str, value: str, base_url: str):
    session = SessionLocal()
    try:
        if token_type == "PALABRA":
            result = session.query(palabra).filter(palabra.c.palabra == value).first()
            if result:
                return f"{base_url}/gifs/palabras/{result.gif}"
            else:
                gifs = []
                for char in value:
                    char_result = session.query(caracter).filter(caracter.c.caracter == char).first()
                    gifs.append(f"{base_url}/gifs/caracteres/{char_result.gif}" if char_result else f"{base_url}/gifs/caracteres/vacio.gif")
                return gifs

        elif token_type in ["LETRA", "DIGITO"]:
            result = session.query(caracter).filter(caracter.c.caracter == value).first()
            return f"{base_url}/gifs/caracteres/{result.gif}" if result else f"{base_url}/gifs/caracteres/vacio.gif"
    finally:
        session.close()

@lexer_router.post("/analyze-text/", tags=["logic"])
def analyze_text(text: str, request: Request):
    base_url = str(request.base_url)[:-1]  # Removes trailing slash
    tokens = perform_lexical_analysis(text)

    tokens_with_gifs = []
    for token in tokens:
        gif = find_gif_for_token(token["tipo"], token["valor"], base_url)
        token["gif"] = gif
        tokens_with_gifs.append(token)

    return {"tokens": tokens_with_gifs}

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