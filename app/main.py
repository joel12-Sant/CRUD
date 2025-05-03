import pandas as pd
from fastapi import FastAPI, HTTPException,Path
from fastapi.responses import HTMLResponse,Response,StreamingResponse
from sqlalchemy import create_engine
import matplotlib.pyplot as plt
from io import BytesIO
import os

app = FastAPI()

#Variables de entorno
MYSQL_HOST = os.getenv('MYSQL_HOST', 'mysql')  
MYSQL_USER = os.getenv('MYSQL_USER', 'user')
MYSQL_PASSWORD = os.getenv('MYSQL_PASSWORD', 'password') 
MYSQL_DB = os.getenv('MYSQL_DB', 'tienda_ropa')

#Conexion a la base de datos
engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_HOST}/{MYSQL_DB}')
