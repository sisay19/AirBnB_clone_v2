#!/usr/bin/env bash
# This script sets up the development environment for AirBnB clone v2 web framework

# Install net-tools
sudo apt update
sudo apt install -y net-tools

# Clone the repository if not already present
if [ ! -d "AirBnB_clone_v2" ]; then
    git clone https://github.com/your_username/AirBnB_clone_v2.git
fi

# Navigate into the repo
cd AirBnB_clone_v2 || exit

# Install Flask if missing
pip3 install flask

# Overwrite the 0-hello_route.py with the correct content
cat > web_flask/0-hello_route.py << 'EOF'
#!/usr/bin/python3
\"\"\"
Flask web application that displays "Hello HBNB!" at /airbnb-onepage/
\"\"\"
from flask import Flask

app = Flask(__name__)

@app.route('/airbnb-onepage/', strict_slashes=False)
def hello_hbnb():
    return 'Hello HBNB!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
EOF

echo "Setup complete. Run: python3 -m web_flask.0-hello_route"
