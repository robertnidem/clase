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

def show(conn,clase):
	cur=conn.cursor()
	if clase=='ubicacion':
		at_ubicacion() 
		cur.execute("SELECT * FROM ubicacion   ")
		rows=cur.fetchall()
		for row in rows:
			print(row)
	
	else:
		print('\nla clase no es valida\n')
 
 
def select_ubicacion(conn):
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

def at_ubicacion():
	print('ID NOMBRE CALLE NUMERO CP MUNICIPIO CIUDAD LATITUD LONGITUD')
	pass
def at_contacto():
	print ('ID NOMBRE TELFONO CORREO WEB FACEBOOK TWITTER INSTAGRAM LINKEDIN WHATSAPP')

def select_contacto(conn):
	at_contacto()
	cur = conn.cursor()
	cur.execute("SELECT * FROM contacto  ")
	rows=cur.fetchall()
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
def seleccionar(conn,actual):
	if actual=="ubicacion":
		select_ubicacion(conn)
	elif actual=="contacto":
		select_contacto(conn)
	else:
		print 'NO EXISTE'

def insert_ubicacion(conn,datos):
    cur=conn.cursor()
    cur.execute("Insert INTO ubicacion values(?,?,?,?,?,?,?,?,?)",datos)

def insert_contacto(conn,datos):
	cur=conn.cursor()
	cur.execute("Insert INTO contacto values(?,?,?,?,?,?,?,?,?,?)".datos)

def meter_ubicacion(conn, data):
	sql='''UPDATE ubicacion
		   SET nombre=?,
		       calle=?,
		       numero=?,
		       cp=?,
		       municipio=?,
		       ciudad=?,
		       latitud=?,
		       longitud=?
		   WHERE id=?'''
	cur=conn.cursor()
	cur.execute(sql,data)

def cambiar(conn,actual):
	cur=conn.cursor()
	if actual=='ubicacion':
		
		show(conn,actual)
		emp=raw_input('Ingresa ID  a modificar')
		nombre=raw_input('Ingresa nuevo nombre: ')
		calle=raw_input('Ingresa nuevo calle: ')
		numero=raw_input('Ingresa nuevo numero: ')
		cp=raw_input('Ingresa nuevo cp: ')
		municipio=raw_input('Ingresa nuevo municipio: ')
		ciudad=raw_input('Ingresa nueva ciudad : ')
		latitud=raw_input('Ingresa nueva latitud : ')
		longitud=raw_input('Ingresa nueva longitud : ')

		"""
		cur.execute("UPDATE 'ubicacion'")
		cur.execute("SET raw_input('Atributo a modificar:  ')=raw_input('nuevo valor:  ')")
		cur.execute("WHERE id=emp")"""
		with conn:
			meter_ubicacion(conn,(nombre,calle,numero,cp,municipio,ciudad,latitud,longitud,emp))

		show(conn,actual)

	elif actual=='contacto':
		print('entre')
		"""emp=raw_input('Ingresa la empresa a modificar')
    	UPDATE contacto
       	SET raw_input('Atributo a modificar: ')=raw_input('nuevo valor: ')
       	WHERE nombre=emp"""
	else:
		print('La clase no es valida')

def delete(conn,actual):
	cur=conn.cursor()
	if actual=='ubicacion':
		id=input('Ingresa ID de elemento para eliminar')
		sql='DELETE FROM ubicacion WHERE id=?'
		cur.execute(sql,(id,))

	else:
		print ('Ingresa opcion valida')

def insert(conn,actual):
	cur=conn.cursor()

def main():
    database = "pythonsqlite.db"
 
    # create a database connection
    conn = create_connection(database)
    with conn:
        #print("1. Query task by priority:")
        #select_task_by_priority(conn,1)
 
        #print("2. Query all tasks")
        #select_all_tasks(conn)
        """
        print("3. insert_task")
        insert_task(conn,(5,'tarea 5','22/10/18'))
        """
        op=1
        while op!=7:
            print (" Que clase quiere entrar: ")
            mostrar(conn)
            op=1
            actual=raw_input()
            while op!=6 and op!=7 :
	            print ("1. Mostrar datos")
	            print ("2. Editar objeto")
	            print ("3. Eliminar objeto")
	            print ("4. Buscar objeto por atributo")
	            print ("5. Agregar objeto")
	            print ("6. Cambiar clase")
	            print ("7. Salir del programa")
        	    op=input("Que quieres: ")
        	    if op==1:
        	    	show(conn,actual)
        	    	

        	    elif op==2:
        	    	cambiar(conn,actual)

        	    elif op==3:
        	    	delete(conn,actual)

        	    elif op==4:
        	    	print("entre")

        	    elif op==5:
        	    	print("entre")

        	    elif op==6:
        	    	print("entre")

        	    else:
        	    	print("ingrese opcion valida")



            
					
 
if __name__ == '__main__':
    main()