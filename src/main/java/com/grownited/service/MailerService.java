package com.grownited.service;

import java.nio.charset.StandardCharsets;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.grownited.entity.UserEntity;

import jakarta.mail.internet.MimeMessage;

@Service
public class MailerService {

    @Autowired
    JavaMailSender mailSender;

    @Autowired
    ResourceLoader resourceLoader;

    public void sendWelcomeMail(UserEntity user) {

        try {

            MimeMessage message = mailSender.createMimeMessage();

            Resource resource = resourceLoader.getResource("classpath:templates/WelcomeMailTempate.html");

            String html = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);

            String body = html
                    .replace("${name}", user.getFirstName())
                    .replace("${email}", user.getEmail())
                    .replace("${loginUrl}", "http://localhost:9999/login")
                    .replace("${companyName}", "AutoSphere");

            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            helper.setTo(user.getEmail());
            helper.setFrom("patelyash8262@gmail.com");   // 🔴 change this
            helper.setSubject("Welcome to AutoSphere 🚗");
            helper.setText(body, true);

            mailSender.send(message);

        } catch (Exception e) {
        	e.printStackTrace();
        }
    }
        public String sendForgotPasswordOtp(String email) {
    		
    		String otp = String.format("%06d", new Random().nextInt(999999));
    		
    		SimpleMailMessage message = new SimpleMailMessage();
    		message.setFrom("patelyash8262@gmail.com");
    		message.setTo(email);
    		message.setSubject("Your Password Reset OTP");
    		message.setText("Dear user,Your OTP for password reset is: " + otp +
    				"\n\nThis OTP is valid for 10 minutes.\n\nIf you did not request this, please ignore.\n\nThank you!");
    		
    		
    		//send mail
    		mailSender.send(message);
    		System.out.println("✅ OTP " + otp + "sent successfully to" + email);
    		
    		 // Return OTP (so controller can validate it later)
    		return otp;
    	}
}
