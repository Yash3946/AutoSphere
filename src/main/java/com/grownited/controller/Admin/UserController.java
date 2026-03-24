package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {

	
	@Autowired
	UserRepository userRepository;

	@Autowired
	UserDetailRepository userDetailRepository;
	
	@Autowired
	PasswordEncoder passwordEncoder;

	@GetMapping("listUser")
	public String listUser(Model model) {

		List<UserEntity> allUser = userRepository.findAll();
		model.addAttribute("userList", allUser);
		return "Admin/ListUser";
	
		
	}
	
	@GetMapping("viewUser")
	public String viewuser(@RequestParam Integer userId, Model model) {

	    Optional<UserEntity> opUser = userRepository.findById(userId);
	    Optional<UserDetailEntity> opUserDetail = userDetailRepository.findByUserId(userId);

	    if(opUser.isEmpty()) {
	        return "redirect:/listUser";
	    }

	    UserEntity userEntity = opUser.get();
	    model.addAttribute("user", userEntity);

	    if(opUserDetail.isPresent()) {
	        model.addAttribute("userDetail", opUserDetail.get());
	    }

	    return "Admin/ViewUser";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(Integer userId) {
		userRepository.deleteById(userId);
		return"redirect:/listUser";
	}
	
	
	@GetMapping("/editUser")
	public String editUser(@RequestParam Integer userId, Model model){

	    Optional<UserEntity> op = userRepository.findById(userId);

	    if(op.isPresent()){
	        model.addAttribute("user", op.get());
	        return "EditUser";
	    }

	    return "redirect:/listUser";
	}
	
	
	@PostMapping("/updateUser")
	public String updateUser(UserEntity userEntity){

	UserEntity dbUser = userRepository.findById(userEntity.getUserId()).get();

	dbUser.setFirstName(userEntity.getFirstName());
	dbUser.setLastName(userEntity.getLastName());
	dbUser.setEmail(userEntity.getEmail());
	dbUser.setGender(userEntity.getGender());
	dbUser.setBirthYear(userEntity.getBirthYear());
	dbUser.setContactNum(userEntity.getContactNum());


	// password update only if entered
	if(userEntity.getPassword() != null && !userEntity.getPassword().isEmpty()){

		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
	dbUser.setPassword(encodedPassword);

	}

	userRepository.save(dbUser);

	return "redirect:/listUser";
	}
}