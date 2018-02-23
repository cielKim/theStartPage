package kr.co.bit.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;
import kr.co.bit.login.LoginVO;

public class MyConfigProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");	
		String email = request.getParameter("userEmail");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		
		ConfigDAO dao = new ConfigDAO();
		ConfigVO configVO = dao.findConfig(loginVO);
		
		if(configVO != null) {
			// 설정이 없는 상태에서 불러올 수는 없기에 유의해야 하고 코드 수정 요함
			String params = configVO.getParams();
			request.setAttribute("params", params);
			System.out.println("params :"+params);
		}
		

		return "/view/main/myConfigProcess.jsp";
	}

}
