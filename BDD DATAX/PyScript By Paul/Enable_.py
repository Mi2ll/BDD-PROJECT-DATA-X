import random
import mysql.connector

def get_report_and_technical_record():
    report = []
    technical_record = []

    print('##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    print('##### Getting data from database')
    cursor.execute("SELECT Report_ID FROM livrable.Report ORDER BY Report_ID")
    for i in cursor:
        report.append(i[0])

    cursor.execute("SELECT Record_ID, Gas_ID FROM livrable.Technical_record ORDER BY Record_ID")
    for i in cursor:
        technical_record.append([i[0], i[1]])

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data retrieved successfully from database")
    return report, technical_record

def find_lot_of_gas(technical_record, gas_id, nb_to_find):
    # list of all gas with the same gas_id
    lot_of_gas = []
    for i in technical_record:
        if i[1] == gas_id:
            lot_of_gas.append(i[0])
    # pick some and remove from the list
    lot_of_gas_choiced = []
    if nb_to_find > len(lot_of_gas):
        nb_to_find = len(lot_of_gas)
        print("Not enough gas to find")
    for i in range(nb_to_find):
        lot_of_gas_choiced.append(lot_of_gas.pop(random.randint(0, len(lot_of_gas)-1)))
    return lot_of_gas_choiced

def add_enable_(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Enable_")
    cursor.execute("ALTER TABLE livrable.Enable_ AUTO_INCREMENT = 1;")
    connexion.commit()
    print('##### Database cleared')

    print('##### Adding data to database')
    query = "INSERT INTO Enable_ (Report_ID, Record_ID) VALUES (%s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Enable_ table")

report_id, technical_record = get_report_and_technical_record()
to_add = []

for i in range(len(report_id)):
    gas_choiced = random.randint(0, len(technical_record)-1)
    nb_gas = random.randint(20, 200)
    lot_of_gas = find_lot_of_gas(technical_record, technical_record[gas_choiced][1], nb_gas)
    for j in lot_of_gas:
        to_add.append([report_id[i], j])

add_enable_(to_add)