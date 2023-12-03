import random
import datetime
import mysql.connector


# Nombre
nb_agent = 250
nb_city = 99
nb_agency = 25

# Années minimum et maximum pour la date de naissance
min_birth_year = 1975
max_birth_year = 2002

# Années minimum et maximum pour la date d'embauche
min_hire_year = 2000
max_hire_year = 2022

# Rate actif
rate_actif = 0.95

# Roles
jobs_types = ['Head of agency', 'Technical agent', 'Administrative agent']

# Adresses et numéro de rue
numeros_rue = [str(i) for i in range(1, 201)]
adresses = ['rue de la Paix', 'avenue des Champs-Élysées', 'boulevard Haussmann', 'place Vendôme',
            'rue du Faubourg Saint-Honoré',
            'rue Saint-Antoine', 'rue de Rivoli', 'rue de Vaugirard', 'rue de Sèvres', 'rue Montmartre',
            'rue de la Roquette', 'rue de Belleville', 'rue des Martyrs', 'rue de Charonne', 'rue de la Pompe',
            'avenue Montaigne', 'avenue George V', 'avenue Marceau', 'avenue Foch', 'avenue Victor Hugo',
            'rue de la Convention', 'rue de la République', 'rue de Dunkerque', 'rue des Petits Champs',
            'rue de Turenne',
            'rue de la Trémoille', 'rue de la Grange-aux-Belles', 'rue d\'Enghien', 'rue du Cherche-Midi',
            'rue de Montreuil',
            'avenue de la Grande Armée', 'avenue Hoche', 'avenue de la Porte de Champerret', 'rue de Passy',
            'rue de la Tour-Maubourg',
            'rue de la Bienfaisance', 'rue de Solférino', 'rue de Rennes', 'rue des Archives',
            'rue des Francs-Bourgeois',
            'rue Saint-Honoré', 'rue de l\'École de Médecine', 'rue de l\'Odéon', 'rue des Écoles', 'rue de Seine',
            'rue de Grenelle', 'rue de Babylone', 'rue Saint-Dominique', 'rue du Bac', 'rue de Verneuil',
            'rue des Rosiers', 'rue Vieille-du-Temple', 'rue des Archives', 'rue des Francs-Bourgeois',
            'rue Charlot',
            'rue de Bretagne', 'rue de la Roquette', 'rue Oberkampf', 'rue Saint-Maur', 'rue de Belleville',
            'rue de Ménilmontant', 'rue de Bagnolet', 'rue de la Chapelle', 'rue de Clignancourt',
            'rue Marx Dormoy',
            'boulevard de la Chapelle', 'boulevard Barbès', 'boulevard de Clichy', 'boulevard Haussmann',
            'boulevard des Batignolles',
            'boulevard Malesherbes', 'boulevard Pereire', 'boulevard Berthier', 'boulevard Victor',
            'boulevard Saint-Germain']


def add_names(nb_agent, file = 'name.txt'):
    nom = []
    prénom = []

    with open(file, 'r', encoding='utf8') as f:
        abc = f.readlines()
        for i in abc:
            ab = i.split(', ')
            nom.append(ab[0])
            if ab[1][-1] == '\n':
                ab[1] = ab[1][:-1]
            prénom.append(ab[1])

    nomprenom = []

    for i in nom:
        for j in prénom:
            nomprenom.append([i, j])

    nom = []
    prénom = []

    for i in range(nb_agent):
        tosplit = random.choice(nomprenom)
        nom.append(tosplit[0])
        prénom.append(tosplit[1])

    return nom, prénom

def add_dates(nb_agent, min_birth_year, max_birth_year, min_hire_year, max_hire_year):
    birthday = []
    hire_date = []

    for i in range(nb_agent):
        # Génération d'une date d'anniversaire aléatoire
        year = random.randint(min_birth_year, max_birth_year)
        month = random.randint(1, 12)
        day = random.randint(1, 28)
        birthday.append(f'{datetime.date(year, month, day)}')

        # Génération d'une date d'embauche aléatoire (aujourd'hui ou plus tard)
        today = datetime.date.today()
        start_date = datetime.date(year + 18, month, day)
        min_hire_date = datetime.date(min_hire_year, 1, 1)
        max_hire_date = datetime.date(max_hire_year, 12, 31)
        hire_date.append(f'{random.choice([today, start_date, min_hire_date, max_hire_date])}')

    return birthday, hire_date

def add_address(nb_agent, numeros_rue, adresses):
    street_number = []
    street_name = []

    for i in range(nb_agent):
        street_number.append(random.choice(numeros_rue))
        street_name.append(random.choice(adresses))

    return street_number, street_name

def add_roles(nb_agent, jobs_types):
    roles = []
    agency_directors = {}

    for i in range(nb_agent):
        current_agency_id = agency_ID[i]

        if current_agency_id not in agency_directors and active[i]:
            role = jobs_types[0]
            agency_directors[current_agency_id] = i
        else:
            role = random.choice(jobs_types[1:])

        roles.append(role)
    return roles

def insert_all(data):
    print('\n##### Connecting to database')
    connexion = mysql.connector.connect(
        user='root',
        password='bananabread',
        host='127.0.0.1',
        database='livrable'
    )

    cursor = connexion.cursor()

    cursor.execute("DELETE FROM livrable.Agent")
    cursor.execute("ALTER TABLE livrable.Agent AUTO_INCREMENT = 1;")
    connexion.commit()
    print("##### Agent table cleared")

    print('##### Adding data to database')
    query = "INSERT INTO Agent (Name, First_name, Birth_date, Start_date, Street_number, Adress, Active, City_ID, Agency_ID, Jobs_type) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    for i in data:
        cursor.execute(query, i)

    connexion.commit()
    cursor.close()
    connexion.close()
    print("##### Data inserted successfully into Agent table")


nom, prénom = add_names(nb_agent) # 1. Créer une liste de x noms et prénoms aléatoires
birthday, hire_date = add_dates(nb_agent, min_birth_year, max_birth_year, min_hire_year, max_hire_year) # 2. Créer une liste de dates de naissance et d'embauche aléatoires
street_number, street_name = add_address(nb_agent, numeros_rue, adresses) # 3. Créer une liste aléatoire de n° de rue et une liste de rue
active = [random.random() < rate_actif for i in range(nb_agent)] # 4. Créer une liste aléatoire d'actif ou inactif
city_ID = [random.randint(1, nb_city) for i in range(nb_agent)] # 5. Créer une liste aléatoire City ID et Agency ID
agency_ID = [random.randint(1, nb_agency) for i in range(nb_agent)] # 5. Créer une liste aléatoire City ID et Agency ID
roles = add_roles(nb_agent, jobs_types) # # 6. Créer une liste de rôle (un seul directeur par agence)


data_to_insert = []
for i in range(nb_agent):
    data_to_insert.append((nom[i], prénom[i], birthday[i], hire_date[i], street_number[i], street_name[i], active[i], city_ID[i], agency_ID[i], roles[i]))

insert_all(data_to_insert)