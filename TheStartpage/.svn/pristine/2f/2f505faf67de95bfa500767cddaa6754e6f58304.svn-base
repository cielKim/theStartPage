from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import pymysql

# 알라딘 서점 OS/Networking내 네트워크 보안/해킹 Best 15
html = urlopen("http://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=387")
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

    if indexAladin==15:
        break

print("알라딘 보안/해킹 Best 15 : "+str(indexAladin)+" 권")

# 교보문고 보안/해킹 Best 10
# 페이지 오류로 없음

# Yes24 네트워크/해킹/보안내 보안/해킹 Best 15
html = urlopen("http://www.yes24.com/24/category/bestseller?CategoryNumber=001001003024003&sumgb=08")
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

    if indexYes24==15:
        break

print("Yes24 보안/해킹 Best 15 : "+str(indexYes24)+"권")

securityHackingTotal = set(aladin+yes24)
print("< 3사 통합한 보안/해킹 서적 수 :"+str(len(securityHackingTotal))+"권 >")

# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
# Connection으로부터 Cursor 생성
cursor = conn.cursor();

conn.set_charset('utf8')

sql = """delete from itbookbest where category = '보안/해킹'"""
cursor.execute(sql)

for bookIsbn13 in securityHackingTotal:
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
    category = "보안/해킹"
    sql = """insert into itbookbest values(%s, %s, %s, %s, %s, %s)"""
    cursor.execute(sql, (category, title, str(bookIsbn13), imgSrc, author, publicationDate))

cursor.close()
conn.commit()
conn.close()
