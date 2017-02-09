from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)
app.secret_key = 'ThisIsSecret'
@app.route('/')
def index():
    if 'counter' not in session:
        session['counter'] = 1
    else:
        session['counter'] += 1
    return render_template("index.html")
@app.route('/ninja2')
def clicked():
    session['counter'] += 1
    return redirect('/')
@app.route('/clear')
def cleared():
    session['counter'] = 0
    return redirect('/')
app.run(debug=True)
