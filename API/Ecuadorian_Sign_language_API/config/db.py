from sqlalchemy import create_engine, MetaData

engine = create_engine("mysql+pymysql://Ecuadorian_Sign_Language:ESL_P63@localhost:3306/Ecuadorian_Sign_Language")
meta = MetaData()

conn = engine.connect()