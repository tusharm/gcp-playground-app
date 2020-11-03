from flask import Flask


def create_app():
    app = Flask('hello-service')

    @app.route('/')
    def hello():
        return "Hello World!\n"

    return app


if __name__ == '__main__':
    app = create_app()
    app.run(host='0.0.0.0', port=8080)
