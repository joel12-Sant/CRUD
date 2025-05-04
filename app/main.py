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

#definicion de clases
class model_clientes:
    nombre = str
    correo = str
    telefono = str
    direccion = str
class model_prveedores:
    nombre = str
    contacto = str
    telefono = str
class model_ventas:
    fecha_venta = str
    id_cliente = int
class model_detalle_ventas:
    id_venta = int
    id_producto = int 
    cantidad = int 
    subtotal = float
class model_categorias: 
    nombre_categoria = str
class model_productos:
    nombre = str
    descripcion = str
    precio = float
    stock = int 
    id_categoria = int 
    id_proveedor = int

@app.get("/productos",)
def get_nombre(limit: int = 200):
    
    return 
