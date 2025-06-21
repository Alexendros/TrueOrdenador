#!/usr/bin/env bash
# ⚙️ Script de instalación y chequeo de entorno – TrueOrdenador (Codex Programador)
# Instala herramientas de calidad y ejecuta tests de código, seguridad y formato.

set -e

echo "== Instalando y comprobando herramientas... =="
python3 -m venv .venv
source .venv/bin/activate

# Instalación de dependencias clave
pip install --upgrade pip
pip install black flake8 mypy pytest bandit safety

echo "== Comprobando formato con black =="
black src tests --check || { echo "❌ Formato incorrecto (black)"; exit 1; }

echo "== Analizando estilo con flake8 =="
flake8 src tests || { echo "❌ Errores de linting (flake8)"; exit 1; }

echo "== Chequeando tipado con mypy =="
mypy src || { echo "❌ Errores de tipado (mypy)"; exit 1; }

echo "== Ejecutando tests con pytest =="
PYTHONPATH=src pytest -q || { echo "❌ Tests fallidos (pytest)"; exit 1; }

echo "== Analizando seguridad con bandit =="
bandit -r src || { echo "❌ Vulnerabilidades detectadas (bandit)"; exit 1; }

echo "== Chequeando vulnerabilidades en dependencias (safety) =="
safety check || { echo "❌ Vulnerabilidades en dependencias (safety)"; exit 1; }

echo "✅ Todo correcto. Entorno listo para desarrollo seguro y revisión por Codex."
