import sqlite3
from sqlite3 import Error
 
 
def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except Error as e:
        print(e)
 
    return None
 
 
def select_all_tasks(conn):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM ubicacion	")
 
    rows = cur.fetchall()
 
    for row in rows:
        print(row)
 
 
"""def select_task_by_priority(conn, priority):
    
    Query tasks by priority
    :param conn: the Connection object
    :param priority:
    :return:
    
    cur = conn.cursor()
    cur.execute("SELECT * FROM ubicacion WHERE priority=?", (priority,))
 
    rows = cur.fetchall()
 
    for row in rows:
        print(row)"""
def mostrar(conn):
	cur=conn.cursor()
	cur.execute("SELECT * FROM sqlite_master WHERE type = 'table' ")

def insert_task(conn,tarea):
    cur=conn.cursor()
    cur.execute("Insert INTO ubicacion values(?,?,?)",tarea)

 
def main():
    database = "pythonsqlite.db"
 
    # create a database connection
    conn = create_connection(database)
    with conn:
        #print("1. Query task by priority:")
        #select_task_by_priority(conn,1)
 
        print("2. Query all tasks")
        select_all_tasks(conn)
        """
        print("3. insert_task")
        insert_task(conn,(5,'tarea 5','22/10/18'))
        """
        op=1
        while op!=7:
            print ("1. Que clase quiere")
            print ("2. Mostrar clases")
            print ("3. Editar objeto")
            print ("4. Eliminar objeto")
            print ("5. Buscar objeto por atributo")
            print ("6. Agregar objeto")
            print ("7. Salir")
            op=input("Que quieres: ")
            if op==1:
                select_all_tasks(conn)
            elif op==2:
            	#SELECT *FROM contacto WHERE type = "table";
            	print ('entre')
            	mostrar(conn)


            elif op==3:
                print("entre")

            elif op==4:
                print("entre")

            elif op==5:
                print("entre")

            elif op==6:
                num=int(input("Id del nuevo objeto"))
                nombre=input("Ingresa el nombre: ")
                print type(nombre)
                fecha=input("INgresa la fecha: ")
                insert_task(conn,(num,nombre,fecha))

            elif op==7:
                return

            else:
                print ("Ingrese una opcion valida")

            pass
 
 
if __name__ == '__main__':
    main()