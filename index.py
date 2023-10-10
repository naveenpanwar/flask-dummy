from flask import Flask

app = Flask(__name__)


@app.route("/")
def get_session_token():
    """
    Just a dummy function
    :return: string
    """
    return "Some answer."


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
