import random
import mysql.connector
import datetime

nb_report = 500

date_max = datetime.date.today()
date_min = datetime.date(2022, 1, 1)


def add_report(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Report")
    cursor.execute("ALTER TABLE livrable.Report AUTO_INCREMENT = 1;")
    connexion.commit()
    print('##### Database cleared')

    print('##### Adding data to database')
    query = "INSERT INTO Report (Report_date) VALUES (%s)"
    for i in data:
        cursor.execute(query, [i])

    connexion.commit()
    cursor.close()
    connexion.close()
    print('##### Data inserted successfully into Report table')

date = []
for i in range(nb_report):
    year = random.randint(date_min.year, date_max.year)
    month = random.randint(1, date_max.month)
    day = random.randint(1, 28)
    date.append(f'{datetime.date(year, month, day)}')

add_report(date)