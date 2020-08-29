package com.taxcpc.config;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class EmailConfig {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public boolean sendMail(String from, 
			                                   String to, 
			                                   String subject,
			                                   String text
			                                    ) {
		boolean send = false;
		try {
			// create MIME message (Email Object)
			MimeMessage message = mailSender.createMimeMessage();
			
			// Use helper object for MimeMessage
			MimeMessageHelper helper = new MimeMessageHelper(message);
			
			// Add message input
			helper.setFrom(from);
			helper.setTo(to);
			helper.setSubject(subject);
			helper.setText(text);
			
			
			// Send message
			mailSender.send(message);
			send = true;
		}catch (Exception e) {
			send = false;
			e.printStackTrace();
		}
		return send;
	}
	
	

}
