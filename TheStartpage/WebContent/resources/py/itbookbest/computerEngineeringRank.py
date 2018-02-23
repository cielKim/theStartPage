from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import pymysql

isbn13 = str(9791158390662);
# 순위 찾아오기
# 알라딘 첫번째 페이지에서 ItemId 따와서, 두번째 페이지로 다시 들어가야 함
# 우선 컴퓨터/모바일 대분류에 순위가 있으면 그걸 보여주고, 없으면 소분류의 순위를 보여주는 모양, 그마저도 없으면 sales point만
# 따라서, 컴퓨터/모바일 대분류 순위만 뽑아오도록
html = urlopen("http://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=All&SearchWord="+isbn13+"&x=11&y=13")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'),"html.parser")
div = bsObj.findAll("div",{"class":"ss_book_list"})
href = div[0].find("a",{"class":"bo3"}).get("href")

html = urlopen(href);
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'),"html.parser")
liList = bsObj.find("ul",{"class":"r_topsidebox"}).findAll("li")
for li in liList:
    print(li.get_text())



# 교보는 isbn으로 상세정보 바로 들어갈 수 있음
# 국내도서 주간베스트가 있으면 그걸 먼저 보여주고, 다음에 컴퓨터/IT 주간베스트 + 순위가 없다면 완전 내용이 없을 수도 있음
html = urlopen("http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode="+isbn13+"&orderClick=LAH&Kc=")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'),"html.parser")
div = bsObj.find("div",{"class":"rank"})
aList = bsObj.find("div",{"class":"rank"}).findAll("a")
for a in aList:
    print(a.get_text())

# Yes24
html = urlopen("http://www.yes24.com/searchcorner/Search?keywordAd=&keyword=&domain=ALL&qdomain=%C5%EB%C7%D5%B0%CB%BB%F6&query="+isbn13)
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'),"html.parser")
td = bsObj.find("td",{"class":"goods_infogrp"})
href = td.find("p",{"class":"goods_name"}).find("a").get("href")
bookId = href.split("/")[3].split("?")[0]
print(bookId);

html = urlopen("http://www.yes24.com/24/goods/"+bookId)

session = dryscrape.Session()
session.visit("http://www.yes24.com/24/goods/"+bookId)
response = session.body()
bsObj = BeautifulSoup(response.decode('euc-kr','ignore'),"html.parser")
span = bsObj.findAll("span",{"class":"gd_best"})
print(span)