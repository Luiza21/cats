import random
from flask import Flask

app = Flask("Cats")

@app.route('/')
def catWebEndPoint():
    return factTaker(), 200

def factTaker():
    line = random.randint(1, 100)
    f = open("cat_facts.txt", "r")
    facts = f.readlines()
    f.close()
    return facts[line].rstrip()

if __name__ == "__main__":
    app.run(debug=True, port=8080, host='0.0.0.0')