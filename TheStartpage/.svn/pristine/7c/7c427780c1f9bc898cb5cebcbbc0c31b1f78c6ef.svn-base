package kr.co.bit.memopad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bit.controller.Controller;

public class MemoDeleteController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//메모삭제
		HttpSession session = request.getSession();
		session.invalidate();
		
		
		return "/view/widget-memopad.jsp";
	}

}
