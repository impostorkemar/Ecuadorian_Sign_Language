import mysql.connector
from decouple import config

class Conexion:
    
    def __init__(self):
        # Credenciales quemadas directamente en el código
        self.user = config('USER')
        self.pwd = config('PWD')
        self.db_name = config('DB_NAME')
        
        self.conn = self.crear_conexion()

    def crear_conexion(self):
        try:
            connection = mysql.connector.connect(
                host='localhost',
                user=self.user,
                password=self.pwd,
                database=self.db_name
            )
            return connection
        except Exception as ee:
            raise Exception(str(ee))
