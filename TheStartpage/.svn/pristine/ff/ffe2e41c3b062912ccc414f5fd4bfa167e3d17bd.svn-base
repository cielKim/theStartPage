package kr.co.bit.memopad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bit.controller.Controller;


public class MemoWriteController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//입력받은 메모 내용 받아오기
		String memo = request.getParameter("memo");
		System.out.println("받은 메모 내용: " + memo);
		
		//MemoVO에 메모 내용 저장
		MemoVO memoVO = new MemoVO(memo);
		
		//session에 Memo 올리기, logout시 메모 삭제
		HttpSession session = request.getSession(true);
		session.setAttribute("memoVO", memoVO);

		
		return "/view/widget-memopad.jsp";
	}

}
