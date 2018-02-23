package kr.co.bit.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bit.controller.Controller;

public class LogoutController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		
		request.setAttribute("msg", "로그아웃 되었습니다.");
		request.setAttribute("url", "/TheStartpage/main.jsp");
		
		return "/view/main/logout.jsp";
	}

}
