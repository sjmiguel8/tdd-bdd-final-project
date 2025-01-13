#!/bin/bash
echo "**************************************************"
echo " Setting up TDD/BDD Final Project Environment"
echo "**************************************************"

echo "*** Starting PostgreSQL service..."
brew services start postgresql@14

echo "*** Creating PostgreSQL user and database..."
createuser postgres -s || true
createdb -U postgres postgres || true

echo "*** Creating a Python virtual environment..."
python3 -m venv ~/venv

echo "*** Activating virtual environment..."
source ~/venv/bin/activate

echo "*** Installing Python dependencies..."
pip install -r requirements.txt

echo "**************************************************"
echo " Setup complete!"
echo "**************************************************"
