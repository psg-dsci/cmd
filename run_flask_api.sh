#!/bin/bash

# Step 1: Check if virtual environment exists, if not, create it
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
fi

# Step 2: Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Step 3: Install the required dependencies from requirements.txt
if [ ! -f "requirements.txt" ]; then
    echo "Creating requirements.txt..."
    echo "Flask==2.2.3" > requirements.txt
fi

echo "Installing dependencies..."
pip install -r requirements.txt

# Step 4: Run the Flask API
echo "Running Flask API..."
python app.py
