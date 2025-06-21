"""Funciones centrales de TrueOrdenador."""

from __future__ import annotations


def saludar(nombre: str) -> str:
    """Genera un saludo personalizado.

    Args:
        nombre: Nombre de la persona a saludar.

    Returns:
        Saludo en español.
    """
    if not nombre:
        raise ValueError("El nombre no puede estar vacío")
    return f"Hola, {nombre}"
