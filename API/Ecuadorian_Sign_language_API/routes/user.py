from fastapi import APIRouter, Response
from config.db import conn, engine
from models.user import users
from schemas.user import User
from cryptography.fernet import Fernet
from starlette import status
from sqlalchemy.sql import select
from fastapi import APIRouter, Response, FastAPI,File, UploadFile
from fastapi.responses import FileResponse
from datetime import datetime
import re
import os
import shutil
import pandas as pd
import json

key = Fernet.generate_key()
f = Fernet(key)
user = APIRouter()

#CONSULTA USERS
@user.get("/users/",response_model=list[User], tags=["users"])#EJEMPLO
def get_users():
    conn = engine.connect()
    return conn.execute(users.select()).fetchall()