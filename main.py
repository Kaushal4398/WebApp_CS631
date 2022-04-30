# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.

import psycopg2

from flask import Flask, render_template, request, redirect, url_for

dest = "dbname=company user=flaskuser password=password"
conn = psycopg2.connect(dest)

app = Flask(__name__)
global employeeId
global epassword

@app.route('/')
def index():
    return render_template('applicationSelect.html')

@app.route('/hrLogin')
def hrLogin():
    return render_template('hrLogin.html')

@app.route('/projLogin')
def projLogin():
    return render_template('projLogin.html')

@app.route('/logout')
def logout():
    return render_template('applicationSelect.html')

@app.route('/checkLogin', methods=['POST', 'GET'])
def loginHR():

    text = "Credentials doesn't match"
    if request.method == 'POST':
        employeeId = request.form['inputEmployeeID']
        epassword = request.form['inputPassword']

        cursor = conn.cursor()
        stat = "SELECT * FROM Credentials WHERE employee = %s and password = %s"
        values = [employeeId, epassword]
        cursor.execute(stat, tuple(values))
        data = cursor.fetchone()

        if data is None:
            # if a user enters wrong password return it to the login page
            return render_template('hrLogin.html', text=text)
        else:
            return render_template('WelcomeHR.html')

@app.route('/checkloginMang', methods=['POST', 'GET'])
def loginMang():
    text = "Credentials doesn't match"

    if request.method == 'POST':
        employeeId = request.form['inputEmployeeID']
        epassword = request.form['inputPassword']

        cursor = conn.cursor()
        stat = "SELECT * FROM Credentials_two WHERE employee = %s and password = %s"
        values = [employeeId, epassword]
        cursor.execute(stat, tuple(values))
        data = cursor.fetchone()

        if data is None:
            # if a user enters wrong password return it to the login page
            return render_template('projLogin.html', text=text)
        else:
            return render_template('WelcomeManag.html')

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    app.run()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
