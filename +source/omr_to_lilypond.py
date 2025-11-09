import subprocess
import os
import sys
from pathlib import Path
from PyPDF2 import PdfReader, PdfWriter
from pdf2image import convert_from_path

def find_audiveris_path():
    candidates = [
        "/opt/audiveris/lib/app",
        "/usr/share/audiveris/lib",
        "/usr/local/share/audiveris/lib/app"
    ]
    for path in candidates:
        if os.path.isdir(path):
            return path

    # "else"
    print("Fehler: Audiveris-Bibliothek nicht gefunden!")
    return None

def run_audiveris(path_file, audiveris_lib_path, dir_scan):
    if not os.path.exists(dir_scan):
        os.makedirs(dir_scan)

    cmd = [
        "java", "-cp", f"{audiveris_lib_path}/*",
        "org.audiveris.omr.Main",
        "-batch",
        "-export",
        "-output", dir_scan,
        path_file
    ]

    print("Starte Audiveris mit:")
    print(" ".join(cmd))

    result = subprocess.run(cmd, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, text=True)
    if result.returncode != 0:
        print("Fehler bei Audiveris:\n", result.stderr)
        return None

    print("Audiveris abgeschlossen.")
    return dir_scan

def find_lilypond_file(dir_scan):
    for root, _, files in os.walk(dir_scan):
        for file in files:
            if file.endswith(".ly"):
                return os.path.join(root, file)
    return None



def main():
    if len(sys.argv) != 3:
        print("Verwendung: python omr_to_lilypond_fixed.py <bilddatei> <ausgabeordner>")
        sys.exit(1)

    dir_scan = sys.argv[1]
    filename = sys.argv[2]
    path_file = os.path.join(dir_scan,filename)

    # Bilddaten laden
    filename= os.path.splitext(filename)[0]
    filename_ending = os.path.splitext(filename)[1]

    # Audiveris-Installation auf PC finden
    audiveris_lib = find_audiveris_path()


    # Audiveris
    result_folder = run_audiveris(path_file, audiveris_lib, dir_scan)
    # Result paths
    path_mxl = os.path.join(dir_scan,filename+'.mxl')
    path_ly  = os.path.join(dir_scan,filename+'.ly')

    # Lilypond aus omr generieren (subprocess)
    with open(os.devnull, "w") as devnull:
        subprocess.run(["musicxml2ly", str(path_mxl), "-o", str(path_ly)],stdout=devnull,stderr=devnull,text=True)

    ly_file = find_lilypond_file(dir_scan)
    if ly_file:
        print(f"LilyPond-Datei gefunden: {ly_file}\n")

    # Ablage aufräumen
    for file in Path(dir_scan).glob("*.log"):
        file.unlink()

    # Lilypond an der richtigen Stelle einsortieren

    # SQLite Datenbank pflegen

    # Lilypond (inhaltlich) aufräumen
    to_remove = [
        r"\stemUp",
        r"\stemDown"
    ]
    path_ly_Path = Path(path_ly)
    text = path_ly_Path.read_text(encoding="utf-8")
    for s in to_remove:
        text = text.replace(s, "")
    path_ly_Path.write_text(text, encoding="utf-8")


if __name__ == "__main__":
    main()
