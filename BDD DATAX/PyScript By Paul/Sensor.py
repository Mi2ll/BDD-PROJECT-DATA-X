import random
import mysql.connector

nb_agent = 250
nb_sector = 11
nb_city = 99
nb_sensor = 200

# get the list of technical agents from the database
def get_technical_agents_with_cities():
    agents_id = []
    cities_id = []

    print('##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    print('##### Getting data from database')
    cursor.execute("SELECT Employee_ID, City_ID FROM livrable.Agent WHERE Jobs_type = 'Technical agent'")
    for i in cursor:
        agents_id.append(i[0])
        cities_id.append(i[1])
    connexion.commit()
    cursor.close()
    connexion.close()
    return agents_id, cities_id

def add_sensor(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Sensor")
    cursor.execute("ALTER TABLE livrable.Sensor AUTO_INCREMENT = 1;")
    connexion.commit()
    print("##### Sensor table cleared")

    print('##### Adding data to database')
    query = "INSERT INTO Sensor (Employee_ID, Sector_ID, City_ID) VALUES (%s, %s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Sensor table")

agents, cities = get_technical_agents_with_cities()
sector = [random.randint(1, nb_sector) for i in range(nb_sensor)]

nb_agent = len(agents)
sensor = []

for i in range(nb_sensor):
    j = random.randint(0, nb_agent-1) # random agent with cities
    k = random.randint(1, nb_sector) # random sector

    sensor.append([agents[j], sector[k], cities[j]])

add_sensor(sensor)