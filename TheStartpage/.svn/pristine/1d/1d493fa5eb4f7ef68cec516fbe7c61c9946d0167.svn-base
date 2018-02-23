package kr.co.bit.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bit.controller.Controller;
import kr.co.bit.login.LoginVO;

public class ConfigProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String paramsString = request.getParameter("params");		
		String email = request.getParameter("userEmail");
		
		ConfigVO configVO = new ConfigVO();
		// db 저장을 위한 dao에 데이터 전달
		configVO.setEmail(email);
		configVO.setParams(paramsString);
		
		ConfigDAO dao = new ConfigDAO();
		dao.insertConfig(configVO);
		
		// 로그인한 사람의 환경설정 상태를 확인하기 위한 VO
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		configVO = dao.findConfig(loginVO);
		
		// 위젯 설정 스트링을 쪼개서 리스트 값으로 넣어줌
		
		if(configVO != null) {
			if(configVO.getParams().length()<1) {
				HttpSession session = request.getSession();
				session.setAttribute("configVO", configVO);
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
					nameArray[i] = paramEach[0]; // 위젯 이름
					optionArray[i] = paramEach[1]; // 위젯 옵션
					
					// 옵션값이 있다면 각기 위젯 옵션DB에 값 넣기
					if(paramEach[1].length()>0) {
						dao.insertEachConfig(email, paramEach[0], paramEach[1]);
					}
					
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
					
					HttpSession session = request.getSession();
					session.setAttribute("configVO", configVO);
			}
			
			}		

		return "/view/main/configProcess.jsp";
	}

}
