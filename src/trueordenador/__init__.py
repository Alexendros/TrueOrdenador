"""Paquete principal de TrueOrdenador."""

from importlib.metadata import version

__all__ = ["__version__"]

try:
    __version__ = version("trueordenador")
except Exception:  # pragma: no cover - versión desconocida
    __version__ = "0.0.0"
