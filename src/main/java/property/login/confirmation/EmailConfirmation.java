package property.login.confirmation;

import java.io.File;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EmailConfirmation {
	
	public void sendEmailAA(String name,String email,String password) {
		
		System.out.println("preparing to send message ...");
		String message = "Hello "+name+", Welcome to Residena...!\n You Have Registered Successfully.\n"
				+ "Username : "+email+" Password : "+password+" \n Please save your credential for further login.";
		String subject = "Residena Registration Confirmation.";
		String to = email;
		String from = "residena12@gmail.com";
		
		sendAttach(message,subject,to,from);
	}

	//this is responsible to send the message with attachment
			private static void sendAttach(String message, String subject, String to, String from) {

				//Variable for gmail
				String host="smtp.gmail.com";					//SMTP Host
				
				//get the system properties
				Properties properties = System.getProperties();
				System.out.println("PROPERTIES "+properties);
				
				//setting important information to properties object
				
			
				properties.put("mail.smtp.host", host);			//host set
				properties.put("mail.smtp.port","465");			//default port (25)/TLS port
				properties.put("mail.smtp.ssl.enable","true");  //enable SSL Authentication
				properties.put("mail.smtp.auth","true");    	//enable authentication
				
				//Step 1: using Session.getInstance() to get the Session object by passing the Properties object
				Session session=Session.getInstance(properties, new Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {				
						return new PasswordAuthentication("Residena12@gmail.com", "Residena@123");
					}
				});
				
				session.setDebug(true);
				
				//Step 2 : compose the message [text,multi media]
				MimeMessage m = new MimeMessage(session);
				
				try {
				
				//from email
				m.setFrom(from);
				
				//adding recipient to message
				m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				
				//adding subject to message
				m.setSubject(subject);
		
				//attachement..To send a file as attachment, we need to create an object of 
				//javax.mail.internet.MimeBodyPart and javax.mail.internet.MimeMultipart.
				
				//file path
				String path="C:\\Shrikant_CDAC\\Final_Project\\UML_DIA\\ResidenaLogo.jpg";
				
				MimeMultipart mimeMultipart = new MimeMultipart();
			
				MimeBodyPart textMime = new MimeBodyPart();
				
				MimeBodyPart fileMime = new MimeBodyPart();
				
				try {
					
					textMime.setText(message);
					
					File file=new File(path);
					fileMime.attachFile(file);

					// Set text message part
					mimeMultipart.addBodyPart(textMime);

					// Second part is attachment
					mimeMultipart.addBodyPart(fileMime);
						
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				//Send the complete message parts
				m.setContent(mimeMultipart);
				
				//Step 3 : send the message using Transport class
				Transport.send(m);

				}catch (Exception e) {
					e.printStackTrace();
				}
				
				System.out.println("confirmation sent...!");
					
			}

		
}












//https://www.journaldev.com/2532/javamail-example-send-mail-in-java-smtp
