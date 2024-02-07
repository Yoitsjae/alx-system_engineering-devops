#!/usr/bin/env bash
# Script to set up development environment for AirBnB Clone v2

# Install net-tools package
sudo apt install -y net-tools

# Clone AirBnB_clone_v2
git clone https://github.com/your-username/AirBnB_clone_v2.git

# Configure web_flask/0-hello_route.py
sed -i 's@app = Flask(__name__)@app = Flask(__name__)\n\n@app.route("/airbnb-onepage/", strict_slashes=False)\ndef hello():\n    return "Hello HBNB!"@' AirBnB_clone_v2/web_flask/0-hello_route.py

echo "Development environment set up successfully!"
