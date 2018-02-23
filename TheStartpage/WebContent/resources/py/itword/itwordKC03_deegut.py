from selenium import webdriver
import time
import pymysql

browser = webdriver.Chrome('D:\Python\chromedriver.exe')

# 첫 페이지로 접근하기
browser.get("http://terms.tta.or.kr/main.do")
wordList = browser.find_element_by_link_text("용어목록")
wordList.click()
time.sleep(2)

koreanConsonants = ['ㄷ']

for consonant in koreanConsonants:
    giyeok = browser.find_element_by_link_text(consonant)
    giyeok.click()
    time.sleep(2)

    ttaList = browser.find_element_by_link_text("TTA표준")
    ttaList.click()
    time.sleep(2)

    left_box = browser.find_element_by_class_name("left_box")
    time.sleep(2)

    # 우선 가장 리스트의 가장 끝 번호가 뭔지 알아볼까?
    lastNum = browser.find_element_by_xpath("//span[@class='last']/a").get_attribute("href")
    lastNum = int(lastNum.split(")")[0].split("(")[1])

    # // 전체 자손 ~, / 직후 자식들
    # ex. subject_onelines = left_box.find_elements_by_xpath("//div[@class='subject_oneline']")

    time.sleep(1)

    for i in range(1, lastNum+1):
        browser.execute_script("javascript:fnNavigate("+str(i)+")")
        time.sleep(2)
        left_box = browser.find_element_by_class_name("left_box")
        aTags = left_box.find_elements_by_xpath("//div[@class='subject_oneline']/a")

        for aTag in aTags:
            print(aTag.text)
            word = aTag.text
            time.sleep(2)
            aTag.click()
            time.sleep(2)

            print(browser.find_element_by_xpath("//div[@class='no_css']").text)
            content = browser.find_element_by_xpath("//div[@class='no_css']").text
            time.sleep(2)

            # MySQL Connection 연결
            conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
            # Connection으로부터 Cursor 생성
            cursor = conn.cursor();
            conn.set_charset('utf8')
            sql = 'insert into itword values(NULL,%s,%s)'

            cursor.execute(sql, (word,content))
            conn.commit()
            cursor.close()
            conn.close()