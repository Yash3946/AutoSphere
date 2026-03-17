package com.grownited.controller.Admin;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;

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

	@Autowired
	Cloudinary cloudinary;

	/* ================= SIGNUP PAGE ================= */

	@GetMapping("/signup")
	public String signup(Model model) {

		List<CarModelTypeEntity> allCarModelType = carModelTypeRepository.findAll();
		model.addAttribute("allCarModelType", allCarModelType);

		return "Admin/Signup";
	}

	/* ================= LOGIN PAGE ================= */

	@GetMapping("/login")
	public String openLoginPage() {
		return "Admin/Login";
	}

	/* ================= AUTHENTICATION ================= */

	@PostMapping("/authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {

		Optional<UserEntity> op = userRepository.findByEmail(email);

		if (op.isPresent()) {

			UserEntity dbUser = op.get();

			if (passwordEncoder.matches(password, dbUser.getPassword())) {

				session.setAttribute("user", dbUser);

				if (dbUser.getRole().equals("ADMIN")) {
					return "redirect:/admin-dashboard";
				}

				if (dbUser.getRole().equals("CUSTOMER")) {
					return "redirect:/customer-dashboard";
				}
			}
		}

		model.addAttribute("error", "Invalid Credentials");
		return "Login";
	}

	/* ================= FORGOT PASSWORD ================= */

	@GetMapping("/forgetpassword")
	public String openForgetPassword() {
		return "Admin/ForgetPassword";
	}

	@PostMapping("/forgot-password")
	public String forgotPassword(@RequestParam String email, Model model) {

		UserEntity user = userRepository.findUserByEmail(email);

		if (user == null) {
			model.addAttribute("error", "Email not found");
			return "Admin/ForgetPassword";
		}

		String otp = mailerService.sendForgotPasswordOtp(email);

		user.setOtp(otp);
		userRepository.save(user);

		model.addAttribute("email", email);

		return "ResetPassword";
	}

	/* ================= RESET PASSWORD ================= */

	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam String email,
								@RequestParam String otp,
								@RequestParam String newPassword,
								Model model) {

		UserEntity user = userRepository.findUserByEmail(email);

		if (user == null) {
			model.addAttribute("error", "User not found");
			return "Admin/ResetPassword";
		}

		if (!user.getOtp().equals(otp)) {
			model.addAttribute("error", "Invalid OTP");
			return "Admin/ResetPassword";
		}

		String encodedPassword = passwordEncoder.encode(newPassword);

		user.setPassword(encodedPassword);
		user.setOtp(null);

		userRepository.save(user);

		return "Admin/Login";
	}

	/* ================= REGISTER ================= */

	@PostMapping("/register")
	public String register(UserEntity userEntity,
						   UserDetailEntity userDetailEntity,
						   MultipartFile profilePic) {

		userEntity.setRole("CUSTOMER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());

		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
		userEntity.setPassword(encodedPassword);

		try {

			Map map = cloudinary.uploader().upload(profilePic.getBytes(), null);

			String profilePicURL = map.get("secure_url").toString();

			userEntity.setProfilePicURL(profilePicURL);

		} catch (IOException e) {
			e.printStackTrace();
		}

		userRepository.save(userEntity);

		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);

		mailerService.sendWelcomeMail(userEntity);

		return "Admin/Login";
	}

	/* ================= LOGOUT ================= */

	@GetMapping("logout")
	public String logout(HttpSession session) {

		session.invalidate();

		return "Admin/Login";
	}
}