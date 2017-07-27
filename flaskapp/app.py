from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('html_basics0.html')


@app.route('/patella/<url>')
def flask_scrape(url):
    return render_template('html_basics0', url=url)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
