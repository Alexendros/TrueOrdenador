# Checklist de desarrollo

Ejecuta estas tareas antes de hacer push o crear un Pull Request:

- [ ] `black src tests --check`
- [ ] `flake8 src tests`
- [ ] `mypy src`
- [ ] `pytest -q`
- [ ] `bandit -r src`
- [ ] `safety check`

Para instalar dependencias de sistema y herramientas de análisis ejecuta `scripts/setup.sh`.
Luego valida todo el entorno con `scripts/check.sh`.
