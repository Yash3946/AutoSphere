package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	
	@GetMapping("/signup")
	public String signup(Model model) {

	    List<CarModelTypeEntity> allCarModelType = carModelTypeRepository.findAll();
	    model.addAttribute("allCarModelType", allCarModelType);

	    return "Signup";
	}
	
	
	@GetMapping("/login")
	public String openLoginPage() {
		return "Login";
	}
	
	@PostMapping("/authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {

	    Optional<UserEntity> op = userRepository.findByEmail(email);

	    if (op.isPresent()) {

	        UserEntity dbUser = op.get();

	        if (dbUser.getPassword().equals(password)) {

	            session.setAttribute("user", dbUser);

	            if (dbUser.getRole().equals("ADMIN")) {
	                return "redirect:/admin-dashboard";
	            } 
	            else if (dbUser.getRole().equals("CUSTOMER")) {
	                return "redirect:/customer-dashboard";
	            }
	        }
	    }

	    model.addAttribute("error", "Invalid Credentials");
	    return "Login";
	}

	
	@GetMapping("/forgetpassword")
	public String openForgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("/register")
	public String register(UserEntity userEntity, UserDetailEntity userDetailEntity) {
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println("Processor => " + Runtime.getRuntime().availableProcessors());
		System.out.println(userDetailEntity.getCountry());
		System.out.println(userDetailEntity.getState());

		
		userEntity.setRole("CUSTOMER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());
		
		// users insert -> UserRepository
		// new -> X
		userRepository.save(userEntity);
		
		userDetailEntity.setUserId(userEntity.getUserId());
		
		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);
		
		//welcome mail send 
		mailerService.sendWelcomeMail(userEntity);
		return"Login";
	}

	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return"Login";
	}
}