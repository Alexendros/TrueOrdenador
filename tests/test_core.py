"""Pruebas del módulo core."""

import pytest

from trueordenador.core import saludar


def test_saludar_ok() -> None:
    """Verifica un saludo correcto."""
    assert saludar("Mundo") == "Hola, Mundo"


def test_saludar_vacio() -> None:
    """Verifica que se lanza error si el nombre está vacío."""
    with pytest.raises(ValueError):
        saludar("")
