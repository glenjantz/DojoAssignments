from flask import Flask, render_template, request, redirect, session
import random
app = Flask(__name__)
app.secret_key = 'ThisIsSecret'
@app.route('/')
def index():
    answer = ""
    if "winnum" not in session:
        session["winnum"] = random.randrange(1,101)
    if "guess" not in session:
        answer = ""
    else:
        if int(session["winnum"]) > int(session["guess"]):
            answer = "Too low"
        if int(session["winnum"]) < int(session["guess"]):
            answer = "Too high"
        if int(session["winnum"]) == int(session["guess"]):
            answer = "You win"
    return render_template("index.html", answer=answer)

@app.route("/guess", methods=["post"])
def guess():
    session["guess"] = int(request.form["guess"])
    return redirect("/")
@app.route("/reset", methods=['post'])
def reset():
    session.clear()
    return redirect("/")
app.run(debug=True)
