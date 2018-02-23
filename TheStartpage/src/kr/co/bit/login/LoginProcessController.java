package kr.co.bit.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bit.config.ConfigDAO;
import kr.co.bit.config.ConfigVO;
import kr.co.bit.controller.Controller;

public class LoginProcessController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		loginVO.setPassword(password);
		
		LoginDAO dao = new LoginDAO();
		// 로그인 상태를 확인하기 위한 VO
		LoginVO userVO = dao.login(loginVO);
		
		// 로그인한 사람의 환경설정 상태를 확인하기 위한 VO
		ConfigDAO cDao = new ConfigDAO();
		ConfigVO configVO = cDao.findConfig(loginVO);
		
		// 위젯 설정 스트링을 쪼개서 리스트 값으로 넣어줌
		if(configVO!=null) {
			if(configVO.getParams().length()<1) {
				System.out.println("그냥 지나가라");
			}
			else {
				System.out.println(configVO.getParams());
				String[] params = configVO.getParams().split("&");
				String[] nameArray = new String[params.length];
				String[] optionArray = new String[params.length];
				int[] xPointArray = new int[params.length];
				int[] yPointArray = new int[params.length];
				int[] widthArray = new int[params.length];
				int[] heightArray = new int[params.length];
				
				for(int i=0;i<params.length;i++) {
					String[] paramEach = params[i].split(",");
					nameArray[i] = paramEach[0];
					optionArray[i] = paramEach[1];
					xPointArray[i] = Integer.parseInt(paramEach[2]);
					yPointArray[i] = Integer.parseInt(paramEach[3]);
					widthArray[i] = Integer.parseInt(paramEach[4]);
					heightArray[i] = Integer.parseInt(paramEach[5]);
				}
				configVO.setNameArray(nameArray);
				configVO.setOptionArray(optionArray);
				configVO.setxPointArray(xPointArray);
				configVO.setyPointArray(yPointArray);
				configVO.setWidthArray(widthArray);
				configVO.setHeightArray(heightArray);
			}
			
		}

		
		
		
		String msg = "";
		String url = "";
		if(userVO == null) {
			msg = "아이디 또는 패스워드가 잘못되었습니다.";
			url = request.getContextPath();
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			
			// 환경설정한 이력이 없으면 configVO 자체가 안 들어감.
			if(configVO!=null) {
				session.setAttribute("configVO", configVO);
			}
			url = request.getContextPath();
			msg = email +"님이 로그인하셨습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
				
		return "/view/main/loginProcess.jsp";
	}
}
