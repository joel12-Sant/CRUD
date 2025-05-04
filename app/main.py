import pandas as pd
from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine
from typing import List
import os
from pydantic import BaseModel 

app = FastAPI()

# Variables de entorno
MYSQL_HOST = os.getenv('MYSQL_HOST', 'mysql')  
MYSQL_USER = os.getenv('MYSQL_USER', 'user')
MYSQL_PASSWORD = os.getenv('MYSQL_PASSWORD', 'password') 
MYSQL_DB = os.getenv('MYSQL_DB', 'tienda_ropa')

# Conexión a la base de datos
engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_HOST}/{MYSQL_DB}')

# Definición de modelos de datos
class Clientes(BaseModel):
    nombre: str
    correo: str
    telefono: str
    direccion: str

class Proveedores(BaseModel):
    nombre: str
    contacto: str
    telefono: str

class Ventas(BaseModel):
    fecha_venta: str
    id_cliente: int

class DetalleVentas(BaseModel):
    id_venta: int
    id_producto: int 
    cantidad: int 
    subtotal: float

class Categorias(BaseModel): 
    nombre_categoria: str

class Productos(BaseModel):
    id_producto: int
    nombre: str
    descripcion: str
    precio: float
    stock: int 
    categoria: str 
    proveedor: str

@app.get("/productos", response_model=List[Productos], tags=["Productos"])
def get_productos(limit: int = 100):
    query = """
            SELECT 
                p.id_producto,
                p.nombre,
                p.descripcion,
                p.precio,
                p.stock,
                prov.nombre AS proveedor,
                c.nombre_categoria AS categoria
            FROM productos p
            INNER JOIN proveedores prov ON p.id_proveedor = prov.id_proveedor
            INNER JOIN categorias c ON p.id_categoria = c.id_categoria
            LIMIT %s;
            """
    try:
        with engine.connect() as connection:
            result = pd.read_sql(query, con=engine, params=(limit,))
        return result.to_dict(orient='records')
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error: {e}")

@app.get("/productos/{id_producto}", response_model=Productos, tags=["Productos"])
def get_producto_id(id_producto: int):
    query = """
        SELECT 
            p.id_producto,
            p.nombre,
            p.descripcion,
            p.precio,
            p.stock,
            prov.nombre AS proveedor,
            c.nombre_categoria AS categoria
        FROM productos p
        INNER JOIN proveedores prov ON p.id_proveedor = prov.id_proveedor
        INNER JOIN categorias c ON p.id_categoria = c.id_categoria
        WHERE p.id_producto = %s;
    """
    try:
        with engine.connect() as connection:
            result = pd.read_sql(query, con=connection, params=(id_producto,))
        if result.empty:
            raise HTTPException(status_code=404, detail="Producto no encontrado")
        return result.iloc[0].to_dict()
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error: {e}")

from typing import List

@app.get("/productos/categoria/{id_categoria}", response_model=List[Productos], tags=["Productos"])
def get_categoria_id(id_categoria: int, limit: int = 100):
    query = """
        SELECT 
            p.id_producto,
            p.nombre,
            p.descripcion,
            p.precio,
            p.stock,
            prov.nombre AS proveedor,
            c.nombre_categoria AS categoria
        FROM productos p
        INNER JOIN proveedores prov ON p.id_proveedor = prov.id_proveedor
        INNER JOIN categorias c ON p.id_categoria = c.id_categoria
        WHERE c.id_categoria = %s
        LIMIT %s;
    """
    try:
        with engine.connect() as connection:
            result = pd.read_sql(query, con=connection, params=(id_categoria, limit))
        if result.empty:
            raise HTTPException(status_code=404, detail="Sin datos de la categoria")
        return result.to_dict(orient="records")
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error: {e}")
