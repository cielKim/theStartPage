from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import pymysql

# 알라딘 서점 OS/Networking Best 6
html = urlopen("http://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=363")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexAladin = 0
aladin = []
for div in bsObj.findAll("div",{"class":"ss_book_box"}):
    href = div.find("div",{"class":"ss_book_list"}).find("a",{"class":"bo3"}).get("href")
    html = urlopen(href)
    bsObj = BeautifulSoup(html, "html.parser")
    info = bsObj.find("div",{"class":"p_goodstd03"}).find("td").get_text()
    isbn13 = info.split(":")[1].strip()
    print(isbn13)

    indexAladin = indexAladin +1
    aladin.append(isbn13)

    if indexAladin==6:
        break

print("알라딘 OS/Networking 언어 Best 6 : "+str(indexAladin)+" 권")
print("알라딘 서점 OS/네트워크/데이터베이스 서적 수 : "+str(len(aladin)))

# 교보문고 OS Best 4
html = urlopen("http://www.kyobobook.co.kr/categoryRenewal/categoryMain.laf?linkClass=3307&mallGb=KOR&orderClick=JAR")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexKyobo = 0
kyobo = []
for div in bsObj.findAll("div",{"class":"info_area"}):
    info = div.find("div",{"class":"title"}).find("a").get("href")
    isbn13 = info.split(",")[2].strip("'")
    print(isbn13)

    indexKyobo = indexKyobo +1
    kyobo.append(isbn13)

    if indexKyobo==4:
        break

print("교보문고 OS Best 4 :"+str(indexKyobo)+"권")

# 교보문고 데이터베이스 Best 10
html = urlopen("http://www.kyobobook.co.kr/categoryRenewal/categoryMain.laf?linkClass=3311&mallGb=KOR&orderClick=JAR")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexKyobo = 0
for div in bsObj.findAll("div",{"class":"info_area"}):
    info = div.find("div",{"class":"title"}).find("a").get("href")
    isbn13 = info.split(",")[2].strip("'")
    print(isbn13)

    indexKyobo = indexKyobo +1
    kyobo.append(isbn13)

    if indexKyobo==10:
        break

print("교보문고 데이터베이스 Best 10 :"+str(indexKyobo)+"권")

# 교보문고 네트워크 Best 4
html = urlopen("http://www.kyobobook.co.kr/categoryRenewal/categoryMain.laf?linkClass=3309&mallGb=KOR&orderClick=JAR")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexKyobo = 0
for div in bsObj.findAll("div",{"class":"info_area"}):
    info = div.find("div",{"class":"title"}).find("a").get("href")
    isbn13 = info.split(",")[2].strip("'")
    print(isbn13)

    indexKyobo = indexKyobo +1
    kyobo.append(isbn13)

    if indexKyobo==4:
        break

print("교보문고 네트워크 Best 4 : "+str(indexKyobo)+" 권")
print("교보문고 OS/네트워크/데이터베이스 서적 수 : "+str(len(kyobo)))

# Yes24 OS/데이터베이스 Best 8
html = urlopen("http://www.yes24.com/24/category/bestseller?CategoryNumber=001001003025&sumgb=08")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexYes24 = 0
yes24 = []
for td in bsObj.findAll("td",{"id":re.compile("goods*")}):
    href = td.parent.find("div",{"class":"goodsImgW"}).find("a").get("href")
    href = "http://www.yes24.com"+href
    html = urlopen(href)
    bsObj = BeautifulSoup(html, "html.parser")
    isbn13 = bsObj.findAll("td",{"class":"cell_2col"})[2].get_text().strip()
    print(isbn13)

    indexYes24 = indexYes24 +1
    yes24.append(isbn13)

    if indexYes24==8:
        break

print("Yes24 OS/데이터베이스 Best 8 : "+str(indexYes24)+"권")

# Yes24 네트워킹/해킹/보안내 네트워크 Best 4
html = urlopen("http://www.yes24.com/24/category/bestseller?CategoryNumber=001001003024001&sumgb=08")
bsObj = BeautifulSoup(html.read().decode('euc-kr','ignore'), "html.parser")

indexYes24 = 0
for td in bsObj.findAll("td",{"id":re.compile("goods*")}):
    href = td.parent.find("div",{"class":"goodsImgW"}).find("a").get("href")
    href = "http://www.yes24.com"+href
    html = urlopen(href)
    bsObj = BeautifulSoup(html, "html.parser")
    isbn13 = bsObj.findAll("td",{"class":"cell_2col"})[2].get_text().strip()
    print(isbn13)

    indexYes24 = indexYes24 +1
    yes24.append(isbn13)

    if indexYes24==4:
        break

print("Yes24 네트워크 Best 4 : "+str(indexYes24)+"권")
print("Yes24 OS/네트워크/데이터베이스 서적 수 : "+str(len(yes24)))

osNetworkDatabaseTotal = set(aladin+kyobo+yes24)
print("< 3사 통합한 OS/네트워크/데이터베이스 서적 수 :"+str(len(osNetworkDatabaseTotal))+"권 >")

# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
# Connection으로부터 Cursor 생성
cursor = conn.cursor();

conn.set_charset('utf8')

sql = """delete from itbookbest where category = 'OS/네트워크/데이터베이스'"""
cursor.execute(sql)

for bookIsbn13 in osNetworkDatabaseTotal:
    url = "http://book.naver.com/search/search.nhn?sm=sta_hty.book&sug=&where=nexearch&query="+bookIsbn13
    html = urlopen(url)
    bsObj = BeautifulSoup(html.read().decode("utf-8",'ignore'), "html.parser")
    title = bsObj.find("div",{"class":"thumb type_search"}).find("img").get("alt")
    imgSrc = bsObj.find("div",{"class":"thumb type_search"}).find("img").get("src")
    imgSrc = imgSrc.split("?")[0]
    dd = bsObj.find("dd",{"class":"txt_block"}).get_text()
    author = dd.split("|")[0].strip()
    author = author[0:-1].strip() # 저자 뒤에 '저' 삭제
    if(dd.split("|")[1].strip().endswith("역")): # 역자가 있는 경우 3번째가 출판일
        publicationDate = dd.split("|")[3].strip()
    else:
        publicationDate = dd.split("|")[2].strip()
    
    print("(1)저자: "+title+", (2)ISBN13: "+bookIsbn13+", (3)이미지주소: "+imgSrc+", (4)저자: "+author+", (5)출판일: "+publicationDate)
    # SQL문 실행
    category = "OS/네트워크/데이터베이스"
    sql = """insert into itbookbest values(%s, %s, %s, %s, %s, %s)"""
    cursor.execute(sql, (category, title, str(bookIsbn13), imgSrc, author, publicationDate))

cursor.close()
conn.commit()
conn.close()
