package kr.co.bit.itnews;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ItnewsDAO {
	
	public ItnewsVO getArticles(String company) {
		ItnewsVO itnewsVO = new ItnewsVO();
		
		String url = "";
		String select = "";
		int articleNum = 0;
		
		if(company.equals("itworld")) {
			url = "http://www.itworld.co.kr/news";
			select = "#m_topic_news_list_title > a";
		}
		else if(company.equals("ddaily")) {
			url = "http://www.ddaily.co.kr/news/section.html?sec_no=56";
			select = "#container > div > div > div > div.section_h12sub > div > div.mo1_arl9 > dl > dt > a";
		}
		
		try {
			Document doc = Jsoup.connect(url).get();
			Elements elements = doc.select(select);
			
			articleNum = elements.size();
			
			String[] titles = new String[articleNum];
			String[] hrefs = new String[articleNum];
			
			int index = 0;
			
			for(Element element: elements) {
				titles[index] = element.text();
				if(company.equals("itworld")) {
					hrefs[index] = "http://www.itworld.co.kr" + element.attr("href");
				}
				else if(company.equals("ddaily")) {
					hrefs[index] = "http://www.ddaily.co.kr" + element.attr("href");
				}
				
				System.out.println(titles[index]);
				index++;
			}
			
			itnewsVO.setTitles(titles);
			itnewsVO.setHrefs(hrefs);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return itnewsVO;
			
	}
}
