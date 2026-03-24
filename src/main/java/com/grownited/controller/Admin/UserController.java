package com.grownited.controller.Admin;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
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
	
	@Autowired
	Cloudinary cloudinary;

	@GetMapping("listUser")
	public String listUser(Model model) {

		List<UserEntity> allUser = userRepository.findAll();
		model.addAttribute("userList", allUser);
		return "Admin/ListUser";
	
		
	}
	
	@GetMapping("viewUser")
	public String viewuser(@RequestParam Integer userId, Model model) {

	    Optional<UserEntity> opUser = userRepository.findById(userId);

	    if(opUser.isEmpty()) {
	        return "redirect:/listUser";
	    }

	    model.addAttribute("user", opUser.get());

	    // ✅ FIX
	    Optional<UserDetailEntity> opUserDetail =
	            userDetailRepository.findByUserId(userId);

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
	        return "Admin/EditUser";
	    }

	    return "redirect:/listUser";
	}
	
	
	@PostMapping("/updateUser")
	public String updateUser(UserEntity userEntity,
	                         @RequestParam(value = "profilePic", required = false) MultipartFile file,
	                         @RequestParam(required = false) String country,
	                         @RequestParam(required = false) String state,
	                         @RequestParam(required = false) String city){

	    UserEntity dbUser = userRepository.findById(userEntity.getUserId()).get();

	    dbUser.setFirstName(userEntity.getFirstName());
	    dbUser.setLastName(userEntity.getLastName());
	    dbUser.setEmail(userEntity.getEmail());
	    dbUser.setGender(userEntity.getGender());
	    dbUser.setBirthYear(userEntity.getBirthYear());
	    dbUser.setContactNum(userEntity.getContactNum());

	    // 🔐 Password update
	    if(userEntity.getPassword() != null && !userEntity.getPassword().isEmpty()){
	        dbUser.setPassword(passwordEncoder.encode(userEntity.getPassword()));
	    }

	    // 🖼️ IMAGE UPDATE (FIXED)
	    try {

	        System.out.println("File Name: " + file.getOriginalFilename());
	        System.out.println("Is Empty: " + file.isEmpty());

	        if(file != null && !file.isEmpty()) {

	            Map uploadResult = cloudinary.uploader().upload(
	                    file.getBytes(),
	                    ObjectUtils.asMap("folder", "user_profiles")
	            );

	            String imageUrl = (String) uploadResult.get("secure_url");

	            dbUser.setProfilePicURL(imageUrl);

	            System.out.println("Uploaded URL: " + imageUrl);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    userRepository.save(dbUser);

	    // 🔥 USER DETAIL
	    Optional<UserDetailEntity> op = userDetailRepository.findByUserId(userEntity.getUserId());

	    UserDetailEntity ud;

	    if(op.isPresent()){
	        ud = op.get();
	    } else {
	        ud = new UserDetailEntity();
	        ud.setUserId(userEntity.getUserId());
	    }

	    ud.setCountry(country);
	    ud.setState(state);
	    ud.setCity(city);

	    userDetailRepository.save(ud);

	    return "redirect:/listUser";
	}
}