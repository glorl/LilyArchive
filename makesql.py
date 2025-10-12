import sqlite3
import pandas as pd

# 1️⃣ Datenbank lesen
conn = sqlite3.connect("+voices/pieces.sqlite")
df = pd.read_sql_query("SELECT * FROM pieces", conn)
conn.close()

# 2️⃣ Nicht benötigte Spalten löschen
df = df.drop(columns=["title", "composer"], errors='ignore')

# 3️⃣ Spalten umbenennen
df = df.rename(columns={
    "title_long": "title",
    "composer_long": "composer"
})

# 4️⃣ Neue Tabelle zurückschreiben
conn = sqlite3.connect("pieces.sqlite")
df.to_sql("pieces", conn, if_exists="replace", index=False)
conn.close()

print("✅ Tabelle 'pieces' wurde angepasst.")


# import pandas as pd
#import sqlite3

# Pfad zu deiner CSV-Datei
#csv_datei = "+voices/json_to_mysql.csv"

# CSV-Datei mit pandas einlesen
#df = pd.read_csv(csv_datei)

# Verbindung zur SQLite-Datenbank herstellen (wird erstellt, wenn sie nicht existiert)
#conn = sqlite3.connect("+voices/pieces.sqlite")

# Tabelle in der Datenbank anlegen und Daten einfügen
# "pieces" ist der Tabellenname – kannst du frei wählen
#df.to_sql("pieces", conn, if_exists="replace", index=False)

# Verbindung schließen
#conn.close()

#print("CSV-Daten erfolgreich in pieces.sqlite importiert!")
