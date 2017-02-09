from flask import Flask, render_template, request, redirect
app = Flask(__name__)
@app.route('/')

def survey():
    return render_template("index.html")

@app.route('/result', methods=['POST'])
def create_user():
   print "Got Post Info"
   # we'll talk about the following two lines after we learn a little more
   # about forms
   # name = request.form['name']
   # Dojo_location = request.form['location']
   # language = request.form['language']
   # redirects back to the '/' route
   return render_template("result.html")
app.run(debug=True) # run our server
