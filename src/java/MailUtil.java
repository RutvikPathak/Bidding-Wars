/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dharti
 */
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil { //It should be class

    private String SMTP_HOST = "smtp.gmail.com";
    private String FROM_ADDRESS = "biddingwars6@gmail.com";
    private String PASSWORD = "BiddingWar$06";
    private String FROM_NAME = "Mail_Integration_Demo_Project";

    public boolean sendMail(String[] recipients, String subject, String message) {
        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", SMTP_HOST);
            props.put("mail.smtp.auth", "true");
            props.put("mail.debug", "false");
            props.put("mail.smtp.ssl.enable", "true");

            Session session = Session.getInstance(props, new MailUtil.SocialAuth());
            
            //Multi-Purpose Internet Mail Extensions
            // MimeMessage class represents a MIME style email message.
            // protocol use to exchange different kinds of data files 
            Message msg = new MimeMessage(session);

            // Set From
            InternetAddress from = new InternetAddress(FROM_ADDRESS, FROM_NAME);
            msg.setFrom(from);

            // Set To
            InternetAddress[] toAddresses = new InternetAddress[recipients.length];
            for (int i = 0; i < recipients.length; i++) {
                toAddresses[i] = new InternetAddress(recipients[i]);
            }

            msg.setRecipients(Message.RecipientType.TO, toAddresses);

//            InternetAddress[] bccAddresses = new InternetAddress[bccRecipients.length]; 
//            
//            for (int j = 0; j < bccRecipients.length; j++) 
//            {
//                    bccAddresses[j] = new InternetAddress(bccRecipients[j]);
//            }   
//            
            //           msg.setRecipients(Message.RecipientType.BCC, bccAddresses);
            // set Subject
            msg.setSubject(subject);
            // Now set the actual message
            msg.setContent(message, "text/plain");
            Transport.send(msg);
            return true;
        } catch (UnsupportedEncodingException | MessagingException ex) {
            Logger.getLogger(MailUtil.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    class SocialAuth extends Authenticator {

        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(FROM_ADDRESS, PASSWORD);
        }
    }
}
