package com.iu.home.licensemembers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;



@Service
public class MailService {
 
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendUsernames(String email, LicenseMembersDTO usernames) throws Exception {
		final SimpleMailMessage simpleMailMessage = new  SimpleMailMessage();
		simpleMailMessage.setTo(email);
		simpleMailMessage.setFrom("tkdgus9688@gmail.com");
		simpleMailMessage.setSubject("아이디 찾기");
		
		StringBuffer sb = new StringBuffer();
		sb.append("가입하신 아이디는");
		sb.append(System.lineSeparator());
		
		
			sb.append(usernames.getUserName());
			sb.append(System.lineSeparator());
		
		sb.append(usernames.getUserName()+("입니다"));
		
		simpleMailMessage.setText(sb.toString());
		
		
		System.out.println("여기");
		new Thread(new Runnable() {
			public void run() {
				System.out.println("여기");
				System.out.println(simpleMailMessage);
				mailSender.send(simpleMailMessage);
				System.out.println("여기2");
			}
		}).start();
	}
 
	
}