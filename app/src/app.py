from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/api/health')
def health():
    return jsonify(status="ok"), 200

@app.route('/api/data')
def data():
    return jsonify(message="Hello from AKS!"), 200

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)