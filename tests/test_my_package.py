from importlib.metadata import version

from ml_playground import main


def test_version():
    assert version("ml-playground") == "0.1.0"


def test_main():
    assert main() == "Hello from python-package-template!"