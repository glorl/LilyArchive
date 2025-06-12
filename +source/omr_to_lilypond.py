import subprocess
import os
import sys

def run_audiveris(image_path, audiveris_path, output_folder):
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    cmd = [
        "java", "-jar", audiveris_path,
        "-batch",
        "-export",
        "-output", output_folder,
        image_path
    ]

    print("Starte Audiveris...")
    result = subprocess.run(cmd, capture_output=True, text=True)

    if result.returncode != 0:
        print("Fehler bei Audiveris:\n", result.stderr)
        return None

    print("Audiveris abgeschlossen.")
    return output_folder

def find_lilypond_file(output_folder):
    for root, dirs, files in os.walk(output_folder):
        for file in files:
            if file.endswith(".ly"):
                return os.path.join(root, file)
    return None

def main():
    if len(sys.argv) != 3:
        print("Verwendung: python omr_to_lilypond.py <bilddatei> <audiveris.jar> <ausgabeordner>")
        return

    image_path = sys.argv[1]
    audiveris_jar = "/opt/audiveris/lib/app/audiveris.jar"
    output_folder = sys.argv[2]

    result_folder = run_audiveris(image_path, audiveris_jar, output_folder)
    if not result_folder:
        print("Fehler bei der Notenerkennung.")
        return

    ly_file = find_lilypond_file(result_folder)
    if ly_file:
        print(f"LilyPond-Code gefunden in: {ly_file}\n")
        with open(ly_file, "r", encoding="utf-8") as f:
            print(f.read())
    else:
        print("Keine LilyPond-Datei gefunden.")

if __name__ == "__main__":
    main()



# python omr_to_lilypond.py pfad/zur/bilddatei.png pfad/zu/audiveris.jar ausgabeordner
# Beispiel:
# python omr_to_lilypond.py testnoten.png Audiveris-5.3.1.jar output
