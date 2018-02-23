from selenium import webdriver
import time
import pymysql

browser = webdriver.Chrome('D:\Python\chromedriver.exe')

# 첫 페이지로 접근하기
browser.get("https://www.wishket.com/project/")
devCheckbox = browser.find_element_by_xpath("//input[@id='dev']")
devCheckbox.click()
time.sleep(3)

timeChecker = browser.find_element_by_xpath("//div[@id='sort-4']")
timeChecker.click()
time.sleep(3)

pageNum = 1

while True:
    browser.execute_script("javascript:setPage("+str(pageNum)+")")
    time.sleep(2)
    print(str(pageNum)+"번째 장")
    print("becomeCloses")
    becomeCloses = browser.find_elements_by_xpath("//section[@class='become-close project-unit']")
    print(len(becomeCloses))
    if(len(becomeCloses)>0):
        for becomeClose in becomeCloses:
            title = becomeClose.find_element_by_class_name("project-title").text
            print(title)
            link = becomeClose.find_element_by_class_name("project-title").find_element_by_tag_name("a").get_attribute("href")
            print(link)
            category = becomeClose.find_element_by_class_name("project-subcategory").text
            print(category)
            deadline = becomeClose.find_element_by_class_name("outer-info-upper-data").text
            print(deadline)
            skills = becomeClose.find_element_by_class_name("project-skill-required").text
            print(skills)

            # MySQL Connection 연결
            conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
            # Connection으로부터 Cursor 생성
            cursor = conn.cursor();
            conn.set_charset('utf8')
            sql = 'insert into projectfinder values(%s,%s,%s,%s,%s)'

            cursor.execute(sql, (title,link,category,deadline, skills))
            conn.commit()
            cursor.close()
            conn.close()
    print("recruitingProjects")
    recruitingProjects = browser.find_elements_by_xpath("//section[@class=' recruiting-project project-unit']")
    print(len(recruitingProjects))
    if(len(recruitingProjects)>0):
        for recruitingProject in recruitingProjects:
            title = recruitingProject.find_element_by_class_name("project-title").text
            print(title)
            link = recruitingProject.find_element_by_class_name("project-title").find_element_by_tag_name("a").get_attribute("href")
            print(link)
            category = recruitingProject.find_element_by_class_name("project-subcategory").text
            print(category)
            deadline = recruitingProject.find_element_by_class_name("outer-info-upper-data").text
            print(deadline)
            skills = recruitingProject.find_element_by_class_name("project-skill-required").text
            print(skills)

            # MySQL Connection 연결
            conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
            # Connection으로부터 Cursor 생성
            cursor = conn.cursor();
            conn.set_charset('utf8')
            sql = 'insert into projectfinder values(%s,%s,%s,%s,%s)'

            cursor.execute(sql, (title,link,category,deadline, skills))
            conn.commit()
            cursor.close()
            conn.close()
    print("opendedProjects")
    openedProjects = browser.find_elements_by_xpath("//section[@class='opened-project project-unit']")
    print(len(openedProjects))
    if(len(openedProjects)>0):
        for openedProject in openedProjects:
            title = openedProject.find_element_by_class_name("project-title").text
            print(title)
            link = openedProject.find_element_by_class_name("project-title").find_element_by_tag_name("a").get_attribute("href")
            print(link)
            category = openedProject.find_element_by_class_name("project-subcategory").text
            print(category)
            deadline = openedProject.find_element_by_class_name("outer-info-upper-data").text
            print(deadline)
            skills = openedProject.find_element_by_class_name("project-skill-required").text
            print(skills)

            # MySQL Connection 연결
            conn = pymysql.connect(host='localhost', user='hr', password='hr', db='devproject')
            # Connection으로부터 Cursor 생성
            cursor = conn.cursor();
            conn.set_charset('utf8')
            sql = 'insert into projectfinder values(%s,%s,%s,%s,%s)'

            cursor.execute(sql, (title,link,category,deadline, skills))
            conn.commit()
            cursor.close()
            conn.close()
    print("closedProjects")
    closedProjects = browser.find_elements_by_xpath("//section[@class=' closed-project project-unit']")
    print(len(closedProjects))
    if(len(closedProjects)>0):
        break

    pageNum = pageNum +1