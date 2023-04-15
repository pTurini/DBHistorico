from flask import Flask, render_template, url_for
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI']="mysql://bdsite:letmein@localhost/bdhist?charset=utf8mb4"
db = SQLAlchemy(app)

class Governante(db.Model):
    id_governante = db.Column(db.Integer, primary_key=True)
    nome_governante = db.Column(db.String(30))
    data_nasc = db.Column(db.DateTime)
    data_morte = db.Column(db.DateTime)
    id_partido = db.Column(db.Integer, db.ForeignKey('partido.id_partido'))

    def __repr__(self):
        return (
            f"Governante('{self.id_governante}', '{self.nome_governante}', "
            f"'{self.data_nasc}', '{self.data_morte}', '{self.id_partido}')"
        )

class Partido(db.Model):
    id_partido = db.Column(db.Integer, primary_key=True)
    nome_partido = db.Column(db.String(50))
    data_fundacao = db.Column(db.DateTime)

    def __repr__(self):
        return (
            f"Partido('{self.id_partido}', '{self.nome_partido}',"
            f"'{self.data_fundacao}')"
        )

class Pais(db.Model):
    id_pais = db.Column(db.Integer, primary_key=True)
    nome_pais = db.Column(db.String(30))
    continente = db.Column(db.String(30))
    populacao = db.Column(db.Float)

    def __repr__(self):
        return (
            f"Pais('{self.id_pais}', '{self.nome_pais}',"
            f"'{self.continente}', '{self.populacao}'"
        )

class Conflito(db.Model):
    id_conflito = db.Column(db.Integer, primary_key=True)
    nome_conflito = db.Column(db.String(50))
    data_inicio = db.Column(db.DateTime)
    data_fim = db.Column(db.DateTime)

    def __repr__(self):
        return (
            f"Conflito('{self.id_conflito}', '{self.nome_conflito}',"
            f"'{self.data_inicio}', '{self.data_fim}')"
        )

posts = [
    {
        'author': 'Joao',
        'title': 'Blog Post 1',
        'content': 'First post content!',
        'date_posted': 'April 15 2023'
    },
    {
        'author': 'Jose',
        'title': 'Blog Post 2',
        'content': 'Second post content!',
        'date_posted': 'April 2 2023'
    },
]

@app.route("/")
@app.route("/home")
def home():
    return render_template("home.html", posts=posts)

@app.route("/gov")
def govs():
    govs = Governante.query.all()
    return render_template("governantes.html", govs=govs)

@app.route("/part")
def parts():
    parts = Partido.query.all()
    return render_template("partidos.html", parts=parts)

if __name__ == '__main__':
    app.run(debug=True)
