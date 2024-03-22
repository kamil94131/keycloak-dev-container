#!/bin/bash
echo "CREATE VENV"
python -m venv .venv

echo "ACTIVATE VENV"
source .venv/bin/activate

echo "INSTALL PLUGIN DEPENDENCIES"
pip install -r requirements.txt
pip install -r dev-requirements.txt

echo "INSTALL CKAN DEPENDENCIES"
pip install ckan==2.10.3

echo "INSTALL OTHER CKAN DEPENDENCIES"
pip install -r https://raw.githubusercontent.com/ckan/ckan/ckan-2.10.3/requirements.txt

echo "INSTALL OTHER DEV CKAN DEPENDENCIES"
pip install -r https://raw.githubusercontent.com/ckan/ckan/ckan-2.10.3/dev-requirements.txt

echo "INSTALL KEYCLOAK PLUGIN"
python setup.py develop