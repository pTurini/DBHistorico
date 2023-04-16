# DBHistorico
Banco de dados histórico para a Disciplina de Banco de Dados

# Como rodar backend:

Executar no shell do mariadb:
```
CREATE USER 'bdsite'@'localhost' IDENTIFIED BY 'letmein';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'bdsite'@'localhost'; 
CREATE DATABASE bdhist;
```

Instalar no python:
```
pip install flask
pip install Flask-SQLAlchemy
pip install mysqlclient
```

Depois ir para o diretório `Website` e executar:
```
python test.py
```
