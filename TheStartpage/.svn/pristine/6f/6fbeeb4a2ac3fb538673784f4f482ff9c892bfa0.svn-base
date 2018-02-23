package kr.co.bit.tipandinfo;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import kr.co.bit.controller.Controller;


public class TipAndInfoController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String board = request.getParameter("board");
		
		
		if(board.equals("okky")) {
			//크롤링할 주소
			String URL = "https://okky.kr/articles/tech";
			Document doc = Jsoup.connect(URL).get();
			
			
			//VO리스트 만들기
			List<OkkyVO>OkkyList = new ArrayList<>();
			
			//긁어올 아이들
			Elements elem = doc.select("ul.list-group").select("li.list-group-item");
			for(int i=0 ; i<elem.size() ; i++) {
				String title = elem.get(i).child(0).child(1).text().trim(); //제목
				String link = "https://okky.kr" + elem.get(i).child(0).child(1).child(0).attr("href"); //링크
				//날짜
				String date = elem.get(i).child(2).child(0).child(1).child(2).text().trim();
				String dates [] = date.split(" ");
				date = dates[0]; //날짜가 2017-12-18 22:10:3.0의 형식으로 되어 있어서 앞부분 작성한 년-월-일만 받아오게 함
				//조회수
				String hit = elem.get(i).child(2).child(0).child(1).child(1).text().trim();
				int hits;
					if (hit.contains("k")) {
						int idx = hit.indexOf("k");
						String ee2 = hit.substring(0, idx);  //소숫점이 있는 경우를 위해 float으로 변환
						float ee3 = Float.valueOf(ee2).floatValue();
						float ee4 = ee3 * 1000;   //k를 환산하기 위해 1000을 곱해줌
						hits = (int) ee4;  //float을 int로 변환
					
					} else {
						hits = Integer.parseInt(hit); //k가 없는 경우 string을 int로만 변환
					}
					
					OkkyList.add(new OkkyVO(title, link));
					System.out.println("제목: " + title +"/n링크: " + link + "/n작성일: " + date + "/n조회수: " + hits);
					
			}
			
			
			//request에 등록하기
			request.setAttribute("OkkyList", OkkyList);
			return "/view/widget-tipandinfo/result_okky.jsp";
		}
		else {
			
			// 클리앙 정보와 자료 게시판
			String URL = "https://www.clien.net/service/group/allinfo?&od=T33";
			Document doc = Jsoup.connect(URL).get();
			
			
			Elements Cliens = doc.select("div.list_item.symph_row");
			
			List<ClienVO>ClienList = new ArrayList<>();
			for(int i=0 ; i < Cliens.size() ; i++) {
				String title = Cliens.get(i).child(1).child(0).child(1).text().trim(); //제목
				String link = "https://www.clien.net" + Cliens.get(i).child(1).child(0).attr("href");//링크
				//날짜
				String date = Cliens.get(i).child(4).child(0).child(0).text().trim();
				String dates [] = date.split(" ");
				date = dates[0]; //날짜가 2017-12-18 22:10:3.0의 형식으로 되어 있어서 앞부분 작성한 년-월-일만 받아오게 함
				//조회수
				String hit = Cliens.get(i).child(3).child(0).text().trim();
				int hits;
					//k가 있는 경우 숫자로 환산
					if (hit.contains("k")) {
						int idx = hit.indexOf("k");
						String ee2 = hit.substring(0, idx);  //소숫점이 있는 경우를 위해 float으로 변환
						float ee3 = Float.valueOf(ee2).floatValue();
						float ee4 = ee3 * 1000;   //k를 환산하기 위해 1000을 곱해줌
						hits = (int) ee4;  //float을 int로 변환
					
					} else {
						hits = Integer.parseInt(hit); //k가 없는 경우 string을 int로만 변환
					}
				ClienList.add(new ClienVO(title, link));
				System.out.println("제목: " + title + "\n링크: " + link + "\n작성일: " + date + "\n조회수 : " + hits);
				
			}
					
			//ClienList request에 List등록
			request.setAttribute("ClienList", ClienList);
			return "/view/widget-tipandinfo/result_clien.jsp";
		}
	}

}
