import random
import datetime
import mysql.connector

nb_record = 10_000
date_max = datetime.date(2021, 12, 31)
date_min = datetime.date(2015, 1, 1)
rate = 0.05

gas = [
    # Gas name         | Mean value      | Fluctuation
    ['CH4',           1.67777778,       0.21848326], # Methane
    ['CO',            1.0,              0.1], # Carbon monoxide (estimated values)
    ['COVNM',         2.0,              0.2], # Non-Methane Volatile Organic Compounds (estimated values)
    ['HFC',           0.00022800,       0.00003239], # Hydrofluorocarbons
    ['NH3',           0.75411111,       1.27287092], # Ammonia
    ['N2O',           3.27500000,       0.03547024], # Nitrous oxide
    ['NOx',           2.5,              0.25], # Nitrogen oxides (estimated values)
    ['PFC',           0.00008823,       0.00008682], # Perfluorocarbons
    ['SF6',           0.0001,           0.00001], # Sulfur hexafluoride (estimated values)
    ['SO2',           1.5,              0.15]  # Sulfur dioxide (estimated values)
]

def find_gas(gas_name):
    for i in gas:
        if i[0] == gas_name:
            return i

# Get list with sensor_id and their attached gas_id and gas_name
def get_sensor_gas():
    sensor_gas = []

    print('##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    print('##### Getting data from database')
    cursor.execute("SELECT Sensor.Sensor_ID, Capture.Gas_ID, Gas.Gas, Sensor.Employee_ID FROM Sensor JOIN Capture ON Sensor.Sensor_ID = Capture.Sensor_ID JOIN Gas ON Capture.Gas_ID = Gas.Gas_ID ORDER BY Sensor.Sensor_ID;")
    for i in cursor:
        sensor_gas.append(i)
    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data retrieved successfully from database")
    return sensor_gas

def add_record(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Technical_record")
    cursor.execute("ALTER TABLE livrable.Technical_record AUTO_INCREMENT = 1;")
    connexion.commit()
    print('##### Database cleared')

    print('##### Adding data to database')
    query = "INSERT INTO Technical_record (Recorded_data, Recorded_date, Sensor_ID, Employee_ID, Gas_ID) VALUES (%s, %s, %s, %s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Technical_record table")


sensor_gas = get_sensor_gas()

date = []
for i in range(nb_record):
    year = random.randint(date_min.year, date_max.year)
    month = random.randint(1, date_max.month)
    day = random.randint(1, 28)
    date.append(f'{datetime.date(year, month, day)}')


recorded_data = []
for i in range(nb_record):
    choiced = random.choice(sensor_gas)

    # find gas name in gas list
    info_gas = find_gas(choiced[2])
    value = (info_gas[1] + random.uniform(-info_gas[2], info_gas[2]))*(rate*(date_max.year - int(date[i][:4])))
    recorded_data.append([value, date[i], choiced[0], choiced[3], choiced[1]])

add_record(recorded_data)