from flask import Flask, render_template, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.sql import text
from base64 import b64encode
app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI']="mysql://bdsite:letmein@localhost/bdhist?charset=utf8mb4"
db = SQLAlchemy(app)
app.jinja_env.globals.update(b64encode=b64encode) 

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/gov")
@app.route("/gov/<id>")
def govs(id=""):
    if id:
        query_gov = text("""
            SELECT * FROM  governante
            WHERE id_governante=:id;
        """)
        gov = db.session.execute(query_gov, {"id":id}).first()

        query_pais = text("""
            SELECT 
                pais.*
            FROM
                pais
                    JOIN
                lideranca
            WHERE
                lideranca.id_pais = pais.id_pais
                    AND 
                lideranca.id_governante = :id;
        """)
        paises = db.session.execute(query_pais, {"id":id}).all()

        query_partido = text("""
            SELECT
                partido.nome_partido, partido.id_partido
            FROM
                partido
            WHERE
                id_partido = :idp;
        """)
        idp = gov.id_partido
        partido = db.session.execute(query_partido,{"idp":gov.id_partido}).first()

        query_imagem = text("""
            SELECT
                *
            FROM
                imagem_governante
            WHERE
                id_img_gov = :idimg
        """)
        idimg = gov.id_img_gov
        img_entity = db.session.execute(query_imagem, {"idimg":idimg}).first()

        if img_entity.img_gov is None:
            img_raw = None
        else:
            img_raw = b64encode(img_entity.img_gov).decode("utf-8")

        return render_template("governante_details.html", gov=gov,
                   paises=paises, partido=partido, img=img_raw)
    else:
        query_govs = text("""
            SELECT 
                    governante.*, imagem_governante.img_gov AS img_gov
            FROM
                governante
                    LEFT JOIN
                imagem_governante ON governante.id_img_gov = imagem_governante.id_img_gov;
        """)
        govs = db.session.execute(query_govs).all()

        return render_template("governantes.html", govs=govs)

@app.route("/partido")
@app.route("/partido/<id>")
def parts(id=""):
    if id:
        query_prt = text("""
            SELECT
                *
            FROM
                partido
            WHERE
                id_partido = :id;
        """)
        partido = db.session.execute(query_prt, {"id":id}).first()

        query_membros = text("""
            SELECT 
                *
            FROM
                governante
            WHERE
                id_partido = :id;
        """)
        membros = db.session.execute(query_membros, {"id":id}).all()

        query_imagem = text("""
            SELECT
                *
            FROM
                imagem_partido
            WHERE
                id_img_part = :idimg
        """)
        idimg = partido.id_img_part
        img_entity = db.session.execute(query_imagem, {"idimg":idimg}).first()

        if img_entity.img_part is None:
            img_raw = None
        else:
            img_raw = b64encode(img_entity.img_part).decode("utf-8")

        return render_template("partido_details.html", partido=partido,
                   membros=membros, img=img_raw)
    else:
        query_partidos = text("""
            SELECT 
                partido.*, imagem_partido.img_part AS img_part
            FROM
                partido
                    LEFT JOIN
                imagem_partido ON partido.id_img_part = imagem_partido.id_img_part;
        """)
        partidos = db.session.execute(query_partidos).all()

        return render_template("partidos.html", partidos=partidos)

@app.route("/pais")
@app.route("/pais/<id>")
def paises(id=""):
    if id:
        query_pais = text(""" 
            SELECT
                *
            FROM
                pais
            WHERE
                pais.id_pais = :id;
        """)
        pais = db.session.execute(query_pais,{"id":id}).first()

        query_govs = text("""
            SELECT 
                governante.*
            FROM
                governante
                    JOIN
                lideranca
            WHERE
                governante.id_governante = lideranca.id_governante
                AND lideranca.id_pais = :id;
        """)
        govs = db.session.execute(query_govs,{"id":id}).all()

        query_conflitos= text("""
            SELECT 
                conflito.*
            FROM
                conflito
                    JOIN
                envolvimento
            WHERE
                envolvimento.id_conflito = conflito.id_conflito
                AND envolvimento.id_pais = :id;
        """)
        conflitos = db.session.execute(query_conflitos,{"id":id}).all()

        query_imagem = text("""
            SELECT
                *
            FROM
                imagem_pais
            WHERE
                id_img_pais = :idimg
        """)
        idimg = pais.id_img_pais
        img_entity = db.session.execute(query_imagem, {"idimg":idimg}).first()

        if img_entity.img_pais is None:
            img_raw = None
        else:
            img_raw = b64encode(img_entity.img_pais).decode("utf-8")

        return render_template("pais_details.html", pais=pais, govs=govs,
                               conflitos=conflitos, img=img_raw)
    else:
        query_paises = text("""
            SELECT 
                pais.*, imagem_pais.img_pais AS img_pais
            FROM
                pais
                    LEFT JOIN
                imagem_pais ON pais.id_img_pais = imagem_pais.id_img_pais;
        """)
        paises = db.session.execute(query_paises).all()

        return render_template("paises.html", paises=paises)

@app.route("/conflito")
@app.route("/conflito/<id>")
def conflitos(id=""):
    if id:
        query_conflito = text("""
            SELECT
                *
            FROM
                conflito
            WHERE
                id_conflito=:id;
        """)
        conflito = db.session.execute(query_conflito,{"id":id}).first()

        query_envols = text("""
            SELECT 
                pais.*
            FROM
                pais
                    JOIN
                envolvimento
            WHERE
                envolvimento.id_pais = pais.id_pais
                AND envolvimento.id_conflito = :id;
        """)
        envols = db.session.execute(query_envols,{"id":id}).all()

        return render_template("conflito_details.html", conflito=conflito,
                   paises=envols)
    else:
        query_conflitos = text("""
            SELECT
                *
            FROM
                conflito;
        """)
        conflitos = db.session.execute(query_conflitos).all()

        return render_template("conflitos.html", conflitos=conflitos)

if __name__ == '__main__':
    app.run(debug=True)
