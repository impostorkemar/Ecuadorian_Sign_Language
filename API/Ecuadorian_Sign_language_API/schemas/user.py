from typing import Optional
from pydantic   import BaseModel

class User(BaseModel):
    id: Optional[str]
    name: str
    email:str    
    password: str

class Palabra(BaseModel):
    id_palabra: Optional[int]
    palabra: str
    descripcion: str
    gif: str

class Caracter(BaseModel):
    id_caracter: Optional[int]
    caracter: str
    gif: str

class DatabaseConfig(BaseModel):
    USER: str
    PWD: str
    DB_NAME: str
