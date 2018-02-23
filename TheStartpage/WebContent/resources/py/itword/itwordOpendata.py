import pymysql
from bs4 import BeautifulSoup
from urllib.request import urlopen

url = urlopen("http://opendatahandbook.org/glossary/ko/")
soup = BeautifulSoup(url.read(),'html.parser',from_encoding='utf-8')
titleList = soup.select('dt')
contentList = soup.select('dd')

wordList = {}
index = 0
db = pymysql.connect("localhost","hr","hr","devproject")

cursor = db.cursor()
sql = 'insert into itword values(NULL,%s,%s)'
db.set_charset('utf8')
for title in titleList:
  title1 = title.text.split("[")[0].strip()
  title2 = title1.split("'")[-1].strip()
  content1 = contentList[index].text
  content1 = content1[0:-1]
  word = {"title": title1, "content": content1}
  word = {index: word}
  wordList.update(word)
  cursor.execute(sql,(title2.strip(),content1.strip()))
  index = index + 1

db.commit()

db.close()


