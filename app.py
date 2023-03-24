from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    json_response = os.environ.get('JSON_RESPONSE')
    return jsonify(json_response)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)


