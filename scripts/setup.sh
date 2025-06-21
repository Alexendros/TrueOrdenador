#!/usr/bin/env bash
# Instalación de dependencias del sistema para TrueOrdenador
set -e
sudo apt-get update
sudo apt-get install -y tesseract-ocr ffmpeg

# Instala herramientas de análisis de código
python3 -m pip install --user flake8 bandit safety || echo "No se pudieron instalar flake8, bandit o safety"
