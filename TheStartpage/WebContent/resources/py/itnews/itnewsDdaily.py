from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import pymysql

html = urlopen("http://www.ddaily.co.kr/news/section.html?sec_no=56")
bsObj = BeautifulSoup(html.read().decode('utf-8','ignore'), "html.parser")

my_titles = bsObj.select('#container > div > div > div > div.section_h12sub > div > div.mo1_arl9 > dl > dt > a')

# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
# Connection으로부터 Cursor 생성
cursor = conn.cursor();

conn.set_charset('utf8')

sql = "delete from itnews where company = 'ddaily'"
cursor.execute(sql)

for title in my_titles:
    title1 = title.text
    href = title.get('href')
    href = "http://www.ddaily.co.kr" + href
    company = 'ddaily'
    print(title1)
    print(href)
    sql = """insert into itnews values( %s, %s, %s) """
    cursor.execute(sql,(title1, href, company))

cursor.close()
conn.commit()
conn.close()
