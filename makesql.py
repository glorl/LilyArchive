import sqlite3

# Pfad zu deiner Datei
db_path = "+voices/pieces.sqlite"

conn = sqlite3.connect(db_path)
cur = conn.cursor()

# Prüfe, ob die Spalten schon existieren
cur.execute("PRAGMA table_info(pieces);")
columns = [col[1] for col in cur.fetchall()]


# Falls nicht vorhanden: hinzufügen (als TEXT)
if "padding" not in columns:
    cur.execute("ALTER TABLE pieces ADD COLUMN padding TEXT;")

if "basicdistance" not in columns:
    cur.execute("ALTER TABLE pieces ADD COLUMN basicdistance TEXT;")

conn.commit()
conn.close()

print("✅ Spalten 'padding' und 'basicdistance' sind jetzt als TEXT (JSON-kompatibel) vorhanden.")


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
