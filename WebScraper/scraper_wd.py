#usando wikidata, parece ser mais fácil
import requests
import pandas as pd
from collections import OrderedDict

url = 'https://query.wikidata.org/sparql'
query="""
SELECT 
  ?pessoa ?pessoaLabel ?nascimento ?morte ?nacionalidade
WHERE {
  ?pessoa wdt:P31 wd:Q5. #pessoas 
  ?pessoa wdt:P19 wd:Q28. #pessoas hungaras
  ?pessoa wdt:P569 ?nascimento.
  ?pessoa wdt:P570 ?morte.
  ?pessoa wdt:P19 ?nacionalidade.
  
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
  """

r = requests.get(url, params = {'format': 'json', 'query': query})
data = r.json()
