package kr.co.bit.member;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;

public class FindPwdController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		JoinDAO dao = new JoinDAO();
		JoinVO vo = new JoinVO();
		vo.setEmail(email);

		boolean ifDuplication = dao.checkEmailDuplication(vo);
		
		String msg = "";
		if(ifDuplication==true) {
			
			String passwordToGive = dao.getPassword(vo);
			
			String host = "smtp.naver.com";
			final String manager = "thestartpage_manager";
			final String password = "thestartpage";
			
			String emailToGo = email; // 회원 이메일
			
			  // Get the session object
			  Properties props = new Properties();
			  props.put("mail.smtp.host", host);
			  props.put("mail.smtp.auth", "true");

			  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			   protected PasswordAuthentication getPasswordAuthentication() {
			    return new PasswordAuthentication(manager, password);
			   }
			  });

			  // Compose the message
			  try {
			   MimeMessage message = new MimeMessage(session);
			   message.setFrom(new InternetAddress(manager));
			   message.addRecipient(Message.RecipientType.TO, new InternetAddress(emailToGo));

			   // Subject
			   message.setSubject("TheStartpage 비밀번호 찾기 메일입니다");
			   
			   // Text
			   message.setText("TheStartpage에서 회원님의 비밀번호는 "+passwordToGive+"입니다");

			   // send the message
			   Transport.send(message);
			   System.out.println("message sent successfully...");
			   msg = "해당 이메일로 비밀번호를 보내드렸습니다.";

			  } catch (MessagingException e) {
			   e.printStackTrace();
			  }
			 
		}
		else {
			//회원 정보가 없으므로 날려줄 것도 없음.
			msg = "해당 이메일의 정보가 존재하지 않습니다.";
		}
		
		request.setAttribute("msg", msg);
		return "/view/main/findPwdProcess.jsp";
	}

}
