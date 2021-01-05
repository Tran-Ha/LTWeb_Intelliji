package vn.edu.nlu.utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MailSender {
    // fields
    private static final String name = "Zoe";
    private static final String email = "votinh1997@gmail.com";
    private static final String password = "thisismypassword@230178";
    private static Session session;

    // method
    static {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");

        session = Session.getInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(email, password);
                    }
                });
    }

    public static Message createMessage(String userEmail) {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email, name));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(userEmail));
            return  message;
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean sendForgetPasswordMail(String userEmail, String link) {
        try {
            Message message = createMessage(userEmail);
            message.setSubject("[" + name + "]" + " Bạn muốn thay đổi mật khẩu?");
            message.setText("Chúng tôi nhận được thông tin rằng bạn đã đánh mất mật khẩu Zoe của bạn. Thật đáng tiếc!\n" +
                    "Nhưng đừng lo lắng! Bạn có thể sử dụng đường link bên dưới để lấy lại mật khẩu:\n" +
                    link + "\n" +
                    "Nếu bạn không sử dụng link trong 30 phút tiếp theo, nó sẽ hết hạn!\n" +
                    "Trân trọng,\n" +
                    "The Zoe Team");
            Transport.send(message);
        } catch (MessagingException | NullPointerException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static void main(String[] args) {
        System.out.println(MailSender.sendForgetPasswordMail("letanphat857@gmail.com", "123456789"));
    }
}
