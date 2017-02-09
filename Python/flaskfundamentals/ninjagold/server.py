from flask import Flask, render_template, session, redirect
app = Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")
@app.route("/process_money")
def monies():
    return redirect("/")
app.run(debug=True)
