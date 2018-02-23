package kr.co.bit.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;

public class JoinCheckController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		
		JoinDAO dao = new JoinDAO();
		JoinVO joinVO = new JoinVO();
		
		joinVO.setEmail(email);
		
		boolean ifDuplication = dao.checkEmailDuplication(joinVO);
		request.setAttribute("ifDuplication", ifDuplication);
		
		return "/view/main/joinCheck.jsp";
	}

}
