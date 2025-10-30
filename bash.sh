#!/usr/bin/env bash
# Force correct Python version and install deps
python --version
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
