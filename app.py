from flask import Flask, escape, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')



@app.route('/about')
def about():
    return render_template('about.html')


@app.route('/stocks/')
def stocks():
    return '<h2>Stock List...</h2>'


@app.route('/hello/<message>')
def hello_message(message):
    return f'<h1>Welcome today {escape(message)}!</h1>'


if __name__ == '__main__':
    app.run(debug=True)