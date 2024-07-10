import psycopg2
import schedule
from dotenv import load_dotenv
import time
import os


load_dotenv()


# Función para ejecutar un archivo SQL
def execute_sql_file(cursor, sql_file_path):
    with open(sql_file_path, 'r') as file:
        sql = file.read()
        cursor.execute(sql)

# Función para transferir datos
def transferencia_datos():
    # Conectar a la base de datos, cambiar de acuerdo al nombre de la base de datos!
    conn = psycopg2.connect(
        dbname=os.getenv("DB_NAME"),    #Nombre de la base de datos
        user=os.getenv("DB_USER"),      #Usuario
        password=os.getenv("DB_PASSWORD"),   #Contraseña
        host=os.getenv("DB_HOST"),     #Dirección del servidor
        port=os.getenv("DB_PORT")          #Puerto
    )

    # Crear un cursor para la base de datos
    cur = conn.cursor()

    try:
        print("Transfiriendo datos...")
        # Ejecutar el script SQL para transferir datos
        
        execute_sql_file(cur, 'transfer_data.sql')

        # Confirmar cambios
        conn.commit()
        print("Datos transferidos correctamente")

    except Exception as e:
        #Excepcion en caso de que se produzca un error
        conn.rollback()
        print(f"Ha ocurrido un errror: {e}")

    finally:
        # Cerrar conexiones a la base de datos
        cur.close()
        conn.close()
transferencia_datos()
# Con esto se ejecutara la transferencia de datos semanalmente a partir de la primera ejecucion del programa
schedule.every().week.do(transferencia_datos)

print("Programa ejecutado, proxima ejecucion dentro de 1 semana")

#Se mantendra la ejecucion del programa de manera continua
while True:
    schedule.run_pending()
    time.sleep(1)
