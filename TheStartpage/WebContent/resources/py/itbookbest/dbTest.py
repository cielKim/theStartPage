import pymysql

# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
# Connection으로부터 Cursor 생성
cursor = conn.cursor();

conn.set_charset('utf8')
#cursor.execute('SET NAMES utf8;')
#cursor.execute('SET CHARACTER SET utf8;')
#cursor.execute('SET character_set_connection=utf8;')


cursor.execute('''insert into itbookbest values("컴퓨터공학","왓슨을 이용한 인공지능 서비스 입문","9791196203702","http://bookthumb.phinf.naver.net/cover/126/704/12670455.jpg","이노우에 켄이치","2017.10.25")''')
cursor.close()
conn.commit()
conn.close()