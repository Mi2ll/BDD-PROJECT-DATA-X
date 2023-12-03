import random
import mysql.connector

nb_rapport = 500
nb_agent = 250


def get_admistrative():
    agents_id = []

    print('##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    print('##### Getting data from database')
    cursor.execute("SELECT Employee_ID FROM livrable.Agent WHERE Jobs_type = 'Administrative agent'")
    for i in cursor:
        agents_id.append(i[0])
    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data retrieved successfully from database")
    return agents_id

def add_Write_(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Write_")
    cursor.execute("ALTER TABLE livrable.Write_ AUTO_INCREMENT = 1;")
    connexion.commit()
    print("##### Write_ table cleared")

    print('##### Adding data to database')
    query = "INSERT INTO Write_ (Report_ID, Employee_ID) VALUES (%s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Write_ table")


id_agent = get_admistrative()
nb_agent = len(id_agent)

to_send = []
for i in range(nb_rapport):
    to_send.append([i+1, id_agent[random.randint(0, nb_agent-1)]])

add_Write_(to_send)