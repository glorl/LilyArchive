import subprocess
import os
import sys

def find_audiveris_path():
    candidates = [
        "/opt/audiveris/lib/app",
        "/usr/share/audiveris/lib",
        "/usr/local/share/audiveris/lib/app"
    ]
    for path in candidates:
        if os.path.isdir(path):
            return path
    return None

def run_audiveris(image_path, audiveris_lib_path, output_folder):
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    cmd = [
        "java", "-cp", f"{audiveris_lib_path}/*",
        "org.audiveris.omr.Main",
        "-batch",
        "-export",
        "-output", output_folder,
        image_path
    ]

    print("Starte Audiveris mit:")
    print(" ".join(cmd))

    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print("Fehler bei Audiveris:\n", result.stderr)
        return None

    print("Audiveris abgeschlossen.")
    return output_folder

def find_lilypond_file(output_folder):
    for root, _, files in os.walk(output_folder):
        for file in files:
            if file.endswith(".ly"):
                return os.path.join(root, file)
    return None

def main():
    if len(sys.argv) != 3:
        print("Verwendung: python omr_to_lilypond_fixed.py <bilddatei> <ausgabeordner>")
        sys.exit(1)

    image_path = sys.argv[1]
    output_folder = sys.argv[2]

    audiveris_lib = find_audiveris_path()
    if not audiveris_lib:
        print("Fehler: Audiveris-Bibliothek nicht gefunden!")
        sys.exit(1)

    print(f"Gefundene Audiveris-Bibliothek: {audiveris_lib}")

    result_folder = run_audiveris(image_path, audiveris_lib, output_folder)
    if not result_folder:
        print("Fehler bei der Notenerkennung.")
        sys.exit(1)

    ly_file = find_lilypond_file(result_folder)
    if ly_file:
        print(f"LilyPond-Datei gefunden: {ly_file}\n")
        with open(ly_file, "r", encoding="utf-8") as f:
            print(f.read())
    else:
        print("Keine LilyPond-Datei gefunden.")

if __name__ == "__main__":
    main()
