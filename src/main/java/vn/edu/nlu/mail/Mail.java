package vn.edu.nlu.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    public static void main(String[] args){
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS

        String username="132272hahuyhoang@gmail.com";
        String password="wouuemfhiwqvqwuh";

        Session session = Session.getInstance(prop,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }
        );

        Message message = new MimeMessage(session);
        try{
            message.setFrom(new InternetAddress("132272hahuyhoang@gmail.com","Zoe book shop"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("132272hahuyhoang@gmail.com"));
            message.setSubject("Testing Subject");
            message.setText("Dear Mail Crawler\n\n No spam to my email, please!");
            Transport.send(message);
            System.out.println("Done");
        }
        catch (MessagingException|UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
