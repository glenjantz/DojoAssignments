from flask import Flask, request, redirect, render_template, session, flash
import re
from mysqlconnection import MySQLConnector
EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
app = Flask(__name__)
app.secret_key = "ThisIsSecret!"
mysql = MySQLConnector(app,'emailv')
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/success', methods=["post"])
def pro():

        query2 = "INSERT INTO emails (email, created_at, updated_at) VALUES (:email, NOW(), NOW())"
        data = {
         'email': request.form['content']
       }

        if len(request.form['content']) < 1:
            flash("Email cannot be blank!")
            return redirect('/')
        elif not EMAIL_REGEX.match(request.form['content']):
            flash("Invalid Email Address!")
            return redirect('/')
        if  EMAIL_REGEX.match(request.form['content']):
            mysql.query_db(query2, data)
            return redirect('/final')
@app.route('/final')
def finalr():

    query1 = "SELECT * FROM emails"
    emails = mysql.query_db(query1)
    blah = emails[len(emails)-1]['email']
    flash("The email address you entered "+ blah+ " is a valid email address!")
    return render_template("success.html", all_emails=emails)
@app.route('/emails/<id>/delete', methods=['POST'])
def destroy(id):
    mysql.query_db("DELETE FROM emails WHERE id=:id", {"id":id})
    return redirect('/final')
app.run(debug=True)
