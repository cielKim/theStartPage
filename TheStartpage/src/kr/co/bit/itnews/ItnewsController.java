package kr.co.bit.itnews;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;

public class ItnewsController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String company = request.getParameter("company");
		ItnewsDAO dao = new ItnewsDAO();
		ItnewsVO itnewsVO = dao.getArticles(company);
		
		request.setAttribute("itnewsVO", itnewsVO);
		
		return "/view/widget-itnews/result.jsp";
	}

}
