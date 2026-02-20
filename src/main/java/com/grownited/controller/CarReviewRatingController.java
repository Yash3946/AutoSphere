package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ReviewRatingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ReviewRatingRepository;
import com.grownited.repository.UserRepository;

@Controller
public class CarReviewRatingController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ReviewRatingRepository reviewRatingRepository;
	
	@GetMapping("carReviewRating")
	public String carReviewRating(Model model) {
		List<UserEntity> user = userRepository.findAll();
		model.addAttribute("user",user);
		return"CarReviewRating";
	}
	
	@PostMapping("saveReview")
	public String saveReview(ReviewRatingEntity reviewRatingEntity) {
		reviewRatingRepository.save(reviewRatingEntity);
		return"AdminDashboard";
	}
	
	@GetMapping("listReviewRating")
	public String listReviewRating(Model model) {
		List<ReviewRatingEntity> allCarReview = reviewRatingRepository.findAll();
		model.addAttribute("allCarReview",allCarReview);
		return"ListReviewRating";
	}
	
	@GetMapping("deleteReviewRating")
	public String deleteReviewRating(Integer reviewId) {
		
		reviewRatingRepository.deleteById(reviewId);
		return "redirect:/listReviewRating";
	}
	
	@GetMapping("viewReviewRating")
	public String viewReviewRating(Integer reviewId,Model model) {
		Optional<ReviewRatingEntity> allReview = reviewRatingRepository.findById(reviewId);
		
		if(allReview.isEmpty()) {
			return"redirect:/listReviewRating";
		}else {
			ReviewRatingEntity viewReview = allReview.get();
			model.addAttribute("viewReview",viewReview);
		}
		
		return"ViewReviewRating";
	}
	
}