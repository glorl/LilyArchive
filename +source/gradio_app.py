import gradio as gr
import subprocess
from pathlib import Path
import shutil
import os

def process_omr(image_file):
    image_path = Path(image_file.name)
    working_dir = Path("omr_output")
    working_dir.mkdir(exist_ok=True)

    # 1. Datei speichern
    saved = working_dir / image_path.name
    shutil.copy(image_path, saved)

    # 2. Dein Script starten
    cmd = ["python3", os.path.join("+source","omr_to_lilypond.py"), str(working_dir), saved.name]
    result = subprocess.run(cmd, capture_output=True, text=True)

    # 3. Finde das Ergebnis (.ly)
    ly_files = list(working_dir.glob("*.ly"))
    if not ly_files:
        return "Keine LilyPond-Datei erzeugt.", None

    ly_file = ly_files[0]

    return result.stdout, ly_file

iface = gr.Interface(
    fn=process_omr,
    inputs=gr.File(type="filepath", label="PNG-Datei hochladen"),
    outputs=[
        gr.Textbox(label="Protokoll (Terminal)"),
        gr.File(label="LilyPond-Datei")
    ],
    title="🎵 OMR → LilyPond Web-Konverter"
)

iface.launch()
