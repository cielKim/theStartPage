package kr.co.bit.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;
import kr.co.bit.member.JoinDAO;
import kr.co.bit.member.JoinVO;

public class JoinProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		JoinDAO dao = new JoinDAO();
		JoinVO joinVO = new JoinVO();
		
		joinVO.setEmail(email);
		joinVO.setPassword(password);

		dao.insert(joinVO);
		
		return "/view/main/joinProcess.jsp";
	}
}