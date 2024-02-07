# AirBnB Clone v2 - Application Server

## Development Setup

This project is designed to serve the AirBnB clone v2 on web-01. Follow the steps below to set up your development environment.

### Prerequisites

- Ensure that task #3 of your SSH project is completed for web-01.
- Install the net-tools package on your server: `sudo apt install -y net-tools`

### Getting Started

1. Git clone your AirBnB_clone_v2 on your web-01 server.

    ```bash
    git clone https://github.com/your-username/AirBnB_clone_v2.git
    ```

2. Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port 5000.

    ```bash
    cd AirBnB_clone_v2/web_flask
    nano 0-hello_route.py
    ```

    Inside the file, make sure your Flask application object is named `app`:

    ```python
    # Your existing code...
    app = Flask(__name__)

    @app.route('/airbnb-onepage/', strict_slashes=False)
    def hello():
        return 'Hello HBNB!'

    if __name__ == "__main__":
        app.run(host='0.0.0.0', port=5000)
    ```

3. Run your Flask application:

    ```bash
    python3 -m web_flask.0-hello_route
    ```

    You should see something like:

    ```bash
    * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
    ```

4. In another terminal window, test your application with `curl`:

    ```bash
    curl 127.0.0.1:5000/airbnb-onepage/
    ```

    You should get:

    ```bash
    Hello HBNB!
    ```

### Author

Jae Ncube

