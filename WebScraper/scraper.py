import requests
from bs4 import BeautifulSoup as bs
url="https://en.wikipedia.org/wiki/Albert_Einstein"

page = requests.get(url)

soup= bs(page.content, 'html.parser')

nome= soup.find(id="firstHeading").get_text()
print(nome)

nascimento= soup.find("span", {"class": "bday"})

#morte= soup.find()

#Nada prático...
