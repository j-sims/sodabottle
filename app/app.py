from bottle import Bottle, run

app = Bottle()

@app.route('/')
def hello():
    return "Hello World!"

run(app, host='0.0.0.0', port=80)
