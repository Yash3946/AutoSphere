package com.grownited.controller;
import com.grownited.repository.UserRepository;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.entity.UserTypeEntity;

@Controller
public class SessionController {

    private final UserRepository userRepository;

    SessionController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

	@GetMapping ("signup")
	public String signup()
	{
		return "Signup";
	}
	
	@GetMapping ("login")
	public String login()
	{
		return "Login";
	}
	
	@GetMapping ("forgetpassword")
	public String forgetpassword()
	{
		return "ForgetPassword";
	}
	
	@PostMapping ("register")
	public String register(UserEntity userEntity,UserTypeEntity userTypeEntity)
	{
		
		userEntity.setRole("PARTICIPENT");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());
		
		userRepository.save(userEntity);
		return "Login";
	}
}
