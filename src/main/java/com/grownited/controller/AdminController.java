package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.CarListingRepository;
import com.grownited.repository.OfferRepository;
import com.grownited.repository.TransactionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	TransactionRepository transactionRepository;
	
	@Autowired
	OfferRepository offerRepository;
	
	@GetMapping(value =  {"admin-dashboard","/"})
	public String adminDashboard(Model model) {
		Long totalUser =  userRepository.count();			
		Long totalAvailable = carListingRepository.countByStatus("AVAILABLE");
		Long totalTransaction = transactionRepository.countByTransactionStatus("COMPLETED");
		Long totalOffer = offerRepository.countByOfferStatus("PENDING");
			 
		model.addAttribute("totalUser",totalUser);
		model.addAttribute("totalAvailable",totalAvailable);
		model.addAttribute("totalTransaction",totalTransaction);
		model.addAttribute("totalOffer",totalOffer);
		
		return "AdminDashboard";
	}
}