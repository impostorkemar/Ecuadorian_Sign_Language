from sqlalchemy import create_engine, MetaData
from sqlalchemy.orm import sessionmaker
from config.conexion import Conexion

# Instanciamos la clase Conexion
conexion = Conexion()

# Construimos la DATABASE_URL usando las credenciales de la clase Conexion
DATABASE_URL = f"mysql+pymysql://{conexion.user}:{conexion.pwd}@localhost:3306/{conexion.db_name}"

engine = create_engine(DATABASE_URL)
meta = MetaData()

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

