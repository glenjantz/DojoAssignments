from flask import Flask, render_template, session, redirect, request, flash
import re
EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
pass_regex = re.compile(r'^[A-Z]$')
app = Flask(__name__)
app.secret_key="hideyhoneighbor"
@app.route("/")
def index():
     return render_template("index.html")
@app.route('/process', methods=['post'])
def processform():
    if len(request.form['email'])< 1:
        flash("Email cannot be blank")
    elif not EMAIL_REGEX.match(request.form['email']):
        flash("Must be a valid email address")
    if not request.form['first_name'].isalpha():
        flash("First name must contain only letters and can not be blank")
    if not request.form['last_name'].isalpha():
        flash("Last name must contain only letters and can not be blank")
    if len(request.form['pass'])<8 or len(request.form['pass_c'])<8:
        flash("Password must be greater than 8 characters")
    elif pass_regex.match(request.form['pass'])<1:
        flash("Password must contain at least 1 uppercase character")
    if request.form['pass'] != request.form['pass_c']:
        flash("Password must match!")
    else:
        flash("success!")
    return redirect('/')
app.run(debug=True)
