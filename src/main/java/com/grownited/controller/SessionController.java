package com.grownited.controller;

import java.io.File;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

@Controller
public class SessionController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    UserDetailRepository userDetailRepository;

    @Autowired
    CarModelTypeRepository carModelTypeRepository;

    @Autowired
    MailerService mailerService;

    @Autowired
    PasswordEncoder passwordEncoder;

    // ================= SIGNUP PAGE =================
    @GetMapping("/signup")
    public String signup(Model model) {

        List<CarModelTypeEntity> allCarModelType = carModelTypeRepository.findAll();
        model.addAttribute("allCarModelType", allCarModelType);

        return "Signup";
    }

    // ================= LOGIN =================
    @GetMapping("/login")
    public String openLoginPage() {
        return "Login";
    }

    @PostMapping("/authenticate")
    public String authenticate(String email, String password, Model model, HttpSession session) {

        Optional<UserEntity> op = userRepository.findByEmail(email);

        if (op.isPresent()) {

            UserEntity dbUser = op.get();

            if (passwordEncoder.matches(password, dbUser.getPassword())) {

                session.setAttribute("user", dbUser);

                if ("ADMIN".equals(dbUser.getRole())) {
                    return "redirect:/admin-dashboard";
                } else {
                    return "redirect:/customer-dashboard";
                }
            }
        }

        model.addAttribute("error", "Invalid Credentials");
        return "Login";
    }

    // ================= FORGOT PASSWORD =================
    @GetMapping("/forgetpassword")
    public String openForgetPasswordPage() {
        return "ForgetPassword";
    }

    @PostMapping("/forgetpassword")
    public String forgotPassword(@RequestParam String email, Model model) {

        Optional<UserEntity> op = userRepository.findByEmail(email);

        if (op.isEmpty()) {
            model.addAttribute("error", "Email not found");
            return "ForgetPassword";
        }

        UserEntity user = op.get();

        String otp = mailerService.sendForgotPasswordOtp(email);

        user.setOtp(otp);
        userRepository.save(user);

        model.addAttribute("email", email);
        model.addAttribute("success", "OTP sent successfully");

        return "ResetPassword";
    }

    // ================= RESET PASSWORD =================
    @PostMapping("/reset-password")
    public String resetPassword(
            @RequestParam String email,
            @RequestParam String otp,
            @RequestParam String newPassword,
            Model model) {

        Optional<UserEntity> op = userRepository.findByEmail(email);

        if (op.isEmpty()) {
            model.addAttribute("error", "User not found");
            return "ResetPassword";
        }

        UserEntity user = op.get();

        if (user.getOtp() == null || !user.getOtp().equals(otp)) {
            model.addAttribute("error", "Invalid OTP");
            model.addAttribute("email", email);
            return "ResetPassword";
        }

        user.setPassword(passwordEncoder.encode(newPassword));
        user.setOtp(null);
        userRepository.save(user);

        model.addAttribute("success", "Password Reset Successfully");
        return "Login";
    }

    // ================= REGISTER WITH PROFILE PIC =================
    @PostMapping("/register")
    public String register(
            UserEntity userEntity,
            UserDetailEntity userDetailEntity,
            @RequestParam("profilepic") MultipartFile profilePic) {

        System.out.println("REGISTER API HIT");

        try {

            // ===== Debug =====
            System.out.println("FILE NAME = " + profilePic.getOriginalFilename());
            System.out.println("FILE SIZE = " + profilePic.getSize());

            if (profilePic != null && !profilePic.isEmpty()) {

                String fileName = System.currentTimeMillis() + "_" + profilePic.getOriginalFilename();

                String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/uploads/";

                File uploadPath = new File(uploadDir);

                if (!uploadPath.exists()) {
                    uploadPath.mkdirs();
                }

                File saveFile = new File(uploadPath, fileName);

                profilePic.transferTo(saveFile);

                userEntity.setProfilePicURL("/uploads/" + fileName);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        userEntity.setRole("CUSTOMER");
        userEntity.setActive(true);
        userEntity.setCreatedAt(LocalDate.now());

        String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
        userEntity.setPassword(encodedPassword);

        userRepository.save(userEntity);

        userDetailEntity.setUserId(userEntity.getUserId());
        userDetailRepository.save(userDetailEntity);

        return "redirect:/listUser";
    }
    // ================= LOGOUT =================
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "Login";
    }
}