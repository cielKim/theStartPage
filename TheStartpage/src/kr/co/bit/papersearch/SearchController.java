package kr.co.bit.papersearch;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import kr.co.bit.controller.Controller;


public class SearchController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//검색에서 입력받은 파라미터 값 받아오기
		String keyword = request.getParameter("keyword");
		System.out.println("받은 키워드: " + keyword);
		
		//keyword 공백 없애기
		List<String> key = new ArrayList<>();
		String insert = "";

		for (int i = 0; i < keyword.split(" ").length; i++) {
			key.add(keyword.split(" ")[i]);
			if (i == 0) {
				insert += key.get(i);
			} else {
				insert += "+" + key.get(i);
			}
		}
		//크롤링할 주소
		String URL = "https://scholar.google.co.kr/scholar?hl=ko&as_sdt=0%2C5&q=" + insert;
		request.setAttribute("url", URL);
		Document doc = Jsoup.connect(URL).get();

		//크롤링할 요소
		//1.논문제목
		
		Elements elem = doc.select(".gs_rt");
		String title = elem.text();

		//2.논문저자
		Elements elem2 = doc.select("div.gs_a");
		String writer = elem2.text();
		
		
		//3.논문링크
		String link=null;
		List<paperVO> list = new ArrayList<>();
		for(Element e : elem) {
			title = e.text();
			System.out.println("제목: " + e.text());
			link = e.getElementsByAttribute("href").attr("href");
			link.trim();
			System.out.println("링크: " + link);
		    list.add(new paperVO(title, link));
			}
		
/*		List<paperVO> Wlist = new ArrayList<>();
		for(Element e : elem2) {
			writer = e.text();
			System.out.println("저자: " + writer);
			Wlist.add(new paperVO(writer));
		}*/
		
		System.out.println("----------------------------------------------------------------");
		//4. 저자 문장 자르기
		List<writerVO> writerList = new ArrayList<>();
		for(Element e : elem2) {
			String str = e.text();
			String [] strs = str.split("-"); //이강국 | 지중해지역연구, 2012 | papersearch.net
			String year = "";
			
			String Wname = strs[0];
				System.out.println("저자이름: " + Wname);
			if(strs.length>1) {
				year = strs[1]; //지중해지역연구 | 2012
				System.out.println("분류와 연도 : " + year);
			}	
			writerList.add(new writerVO(Wname, year));
				
			/*if(writer2.contains(",")) {
				writers = writer2.split(", ");
				category = writers[0];
				year = writers[1];
				}
			else
			   year = strs[1];
				writerList.add(new writerVO(Wname, year));*/
				
		}
		
		ArrayList<Integer> indexArray = new ArrayList<Integer>();
		for(paperVO paperVO : list) {
			if(paperVO.getLink().length()<1) {
				indexArray.add(list.indexOf(paperVO));
			}
		}
		
		int sizeOfBomb = indexArray.size();
		int indexOfDummy = sizeOfBomb;
		
		for(Integer indexOfBomb : indexArray) {
			list.remove(indexOfBomb-(sizeOfBomb-indexOfDummy));
			writerList.remove(indexOfBomb-(sizeOfBomb-indexOfDummy));
			indexOfDummy--;
		}
		
		
		//request에 등록하기
		request.setAttribute("list", list);
		//request.setAttribute("Wlist", Wlist);
		request.setAttribute("writerList", writerList);
		
		//index페이지에 뿌려주기
		return "/view/widget-papersearch/result.jsp";

	}
}
