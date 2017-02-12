from flask import Flask, render_template
from mysqlconnection import MySQLConnector
app = Flask(__name__)
mysql = MySQLConnector(app, 'mydb')
print mysql.query_db("SELECT * FROM users")
@app.route('/')
def index():
    return render_template('index.html')
app.run(debug=True)
