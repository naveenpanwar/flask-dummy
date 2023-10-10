from flask import Flask

app = Flask(__name__)


@app.post("/get-session-token")
def get_session_token():
    return "Some answer."


if __name__ == "__main__":
    app.run(host="0.0.0.0")
