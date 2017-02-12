from flask import Flask, render_template, request, redirect, flash, session
app = Flask(__name__)
app.secret_key='ThisisSecret'
@app.route('/')

def survey():

    return render_template("index.html")
@app.route('/result', methods=['POST'])
def create_user():
   if len(request.form['name']) < 1:
       flash("Name cannot be empty!")
       return redirect("/")
   if len(request.form['textbox']) < 1:
       flash("comments cannot be empty!")
       return redirect("/")
   if len(request.form['textbox']) > 120:
       flash("comments cannot exceed 120 characters!")
       return redirect("/")
   return render_template("result.html")
app.run(debug=True) # run our server
