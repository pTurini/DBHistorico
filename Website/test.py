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
    populacao_milh = db.Column(db.Float)

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

@app.route("/")
def home():
    return "Hello world!"

@app.route("/gov")
@app.route("/gov/<id>")
def govs(id=""):
    if id:
        gov = Governante.query.filter_by(id_governante=id).first()
        return f"Page for {gov.nome_governante}"
    else:
        govs = Governante.query.all()
        return render_template("governantes.html", govs=govs)

@app.route("/partido")
@app.route("/partido/<id>")
def parts(id=""):
    if id:
        partido = Partido.query.filter_by(id_partido=id).first()
        return f"Page for {partido.nome_partido}"
    else:
        partidos = Partido.query.all()
        return render_template("partidos.html", partidos=partidos)

@app.route("/pais")
@app.route("/pais/<id>")
def paises(id=""):
    if id:
        pais = Partido.query.filter_by(id_pais=id).first()
        return f"Page for {pais.nome_pais}"
    else:
        paises = Pais.query.all()
        return render_template("paises.html", paises=paises)

@app.route("/conflito")
@app.route("/conflito/<id>")
def conflitos(id=""):
    if id:
        conflito = Conflito.query.filter_by(id_conflito=id).first()
        return f"Page for {conflito.nome_conflito}"
    else:
        conflitos = Conflito.query.all()
        return render_template("conflitos.html", conflitos=conflitos)

if __name__ == '__main__':
    app.run(debug=True)
