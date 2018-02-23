from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import pymysql

html = urlopen("http://www.itworld.co.kr/news")
bsObj = BeautifulSoup(html.read().decode('utf-8','ignore'), "html.parser")

my_titles = bsObj.select('#m_topic_news_list_title > a')

# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
# Connection으로부터 Cursor 생성
cursor = conn.cursor();

conn.set_charset('utf8')

sql = "delete from itnews where company = 'itnews'"
cursor.execute(sql)

for title in my_titles:
    title1 = title.text
    href = title.get('href')
    href = "http://www.itworld.co.kr"+href
    company = 'itworld'
    print(title1)
    print(href)
    sql = """insert into itnews values( %s, %s, %s) """
    cursor.execute(sql,(title1, href, company))

cursor.close()
conn.commit()
conn.close()

