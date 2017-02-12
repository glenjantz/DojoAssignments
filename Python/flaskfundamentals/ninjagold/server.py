from flask import Flask, render_template, session, redirect, request
import random
from datetime import datetime
app = Flask(__name__)
app.secret_key="hideyhoneighbor"
@app.route("/")
def index():
    if "gold" not in session:
        session["gold"] = 0
    if "result" not in session:
        session["result"] = ""
    # if "no" not in session:
    #     session["no"] = ""
    return render_template("index.html")
@app.route("/process_money", methods=["post"])
def monies():
    if request.form["building"] == "farm":
        addgold = random.randrange(10,20)
        session["gold"] += addgold
        session["result"] += "Earned "+ str(addgold)+ " gold from the farm! " + "("+str(datetime.now())+")" + "\n"
    if request.form["building"] == "cave":
        addgold = random.randrange(5,10)
        session["gold"] += addgold
        session["result"] += "Earned "+ str(addgold)+ " gold from the cave! " + "("+str(datetime.now())+")" + "\n"
    if request.form["building"] == "house":
        addgold = random.randrange(2,5)
        session["gold"] += addgold
        session["result"] += "Earned "+ str(addgold)+ " gold from the house! " + "("+str(datetime.now())+")" + "\n"
    if request.form["building"] == "casino":
        if session["gold"] > 50:
            addgold = random.randrange(-50,50)
            session["gold"] += addgold
            session["result"] += "Earned "+ str(addgold)+ " gold from the casino! " + "("+str(datetime.now())+")" + "\n"
            session["no"] = "make it rain"
        else:
            session["no"] = "You dont have enough gold to gamble"

    return redirect("/")
app.run(debug=True)
