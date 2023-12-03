import random
import mysql.connector

nb_sensor = 200
nb_gas = 10


def add_capture(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Capture")
    cursor.execute("ALTER TABLE livrable.Capture AUTO_INCREMENT = 1;")
    connexion.commit()
    print("##### Capture table cleared")

    print('##### Adding data to database')
    query = "INSERT INTO Capture (Sensor_ID, Gas_ID) VALUES (%s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Capture table")


rate = [(nb_gas-i)/nb_gas for i in range(0, nb_gas)]
sensor_gas = []

for i in range(1, nb_sensor+1):
    sensor_gas.append([i])
    gas_id = [k for k in range(1, nb_gas)]
    for j in range(0, nb_gas):
        if random.random() < rate[j]:
            sensor_gas[i-1].append(gas_id.pop(random.randint(0, len(gas_id)-1)))
        else :
            break

to_send = []
for i in sensor_gas:
    for j in i[1:]:
        to_send.append([i[0], j])

add_capture(to_send)