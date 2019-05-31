package com.email;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
public class SendEmail {
	public static void main(String [] args) {
	       send("rktirtho@gmail.com", "Test", "kana", "rktirthodiu@gmail.com", "Ilovepakistan17");
	     
	   }
	   public static void send(String to, String sub,String msg, final String user, final String pass) 
	    {
	        Properties props = new Properties();

	        props.put("mail.smtp.host", "smtp.gmail.com");
	        props.put("mail.smtp.port", "587");	
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        
	        Session session = Session.getDefaultInstance(props,new Authenticator() 
	        {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() 
	            {
	                return new PasswordAuthentication(user, pass);
	            }
	        });

	        try 
	        {
	            Message message = new MimeMessage(session);
	            
	            message.setFrom(new InternetAddress(user));
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
	            message.setSubject(sub);
	            message.setText(msg);

	            Transport.send(message);
	            
	        
	            
	        } catch (MessagingException e) 
	        {
	         
	            
	            throw new RuntimeException(e);
	        }
	        
	    }
	}