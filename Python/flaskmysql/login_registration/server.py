from flask import Flask, request, redirect, render_template, session, flash
import re
from mysqlconnection import MySQLConnector
from flask.ext.bcrypt import Bcrypt
EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
pass_regex = re.compile(r'^[A-Z]$')
app = Flask(__name__)
bcrypt = Bcrypt(app)
app.secret_key = "ThisIsSecret!"
mysql = MySQLConnector(app,'login')
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/process', methods=["post"])
def processform():
    # query3 = "select * from users where email = request.form["email"]"
    # query_data = { 'email': request.form['email']
    # duplicates = mysql.query_db(query3)
    # print duplicates
    query3 = "SELECT * FROM users WHERE email = :email LIMIT 1"
    query_data = { 'email': request.form['email'] }
    duplicates = mysql.query_db(query3, query_data)
        #query_data = { 'email': request.form['email']
    if not EMAIL_REGEX.match(request.form["email"]):
         flash("Invalid email")
         return redirect('/')
    elif not request.form["first_name"].isalpha():
        flash("Name can not contain numbers")
        return redirect('/')
    elif len(request.form["first_name"]) < 2:
        flash("Name must be greater than 2 characters")
        return redirect('/')
    elif not request.form["last_name"].isalpha():
        flash("name can not contrain numbers")
        return redirect('/')
    elif len(request.form["last_name"]) < 2:
        flash("Name must contain more than 2 characters")
        return redirect("/")
    elif len(request.form["password"]) < 8:
        flash("password must contain more than 8 characters")
        return redirect('/')
    elif not pass_regex.match(request.form["password"])<1:
        flash("password must contain at least 1 uppercase character")
        return redirect("/")
    elif request.form['password'] != request.form['password_c']:
        flash('passwords must match')
        return redirect('/')
    elif len(duplicates) > 0:
        flash("already exists")
        return redirect('/')
    else:
        password = request.form['password']
        pw_hash = bcrypt.generate_password_hash(password)
        query2 = "INSERT INTO users (first_name, last_name, password, email, created_at, updated_at) VALUES (:first_name, :last_name, :password, :email, NOW(), NOW())"
        data = {
         'first_name': request.form['first_name'],
         'last_name':  request.form['last_name'],
         'password': pw_hash,
         'email': request.form['email']
       }
        userid = mysql.query_db(query2, data)
        session['userid'] = userid
        flash("successful registration")
        return redirect("/final")
@app.route('/final')
def loggedin():
    return render_template('success.html')
@app.route('/login', methods=["post"])
def login():
    password = request.form['password']
    user_query = "SELECT * FROM users WHERE email = :email LIMIT 1"
    query_data = { 'email': request.form['email'] }
    user = mysql.query_db(user_query, query_data)
    if len(user) > 0:
        if bcrypt.check_password_hash(user[0]['password'], password):
            session['userid'] = user[0]['id']
            return render_template('/success.html')
        else:
            flash("login failed, invalid email or password")
            return redirect('/')
    else:
        flash("login failed")
        return redirect('/')
@app.route('/logout')
def logout():
    session.pop('userid')
    flash("logged out")
    return redirect('/')
app.run(debug=True)
