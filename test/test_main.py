import main

app = main.create_app()
app.testing = True


def test_app_hello():
    client = app.test_client()

    resp = client.get('/')
    assert resp.status_code == 200
    assert resp.data == b'Hello World!\n'

