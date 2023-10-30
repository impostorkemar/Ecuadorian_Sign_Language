import mysql.connector
from decouple import config

class Conexion:
    
    def __init__(self):
        # Obtener las credenciales de las variables de entorno
        self.user = config('USER')
        self.pwd = config('PWD')
        self.db_name = config('DB_NAME')
        self.host = config('HOST', default='localhost')  # Establece 'localhost' como predeterminado si no se encuentra el valor de HOST en .env
        
        self.conn = self.crear_conexion()

    def crear_conexion(self):
        try:
            connection = mysql.connector.connect(
                host=self.host,
                user=self.user,
                password=self.pwd,
                database=self.db_name
            )
            return connection
        except Exception as ee:
            raise Exception(str(ee))
