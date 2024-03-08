#!/bin/bash

VENV_DIR="$HOME/.virtualenvs/pimoroni"
source $VENV_DIR/bin/activate
python3 ../python/inky-status.py
deactivate

