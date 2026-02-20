package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

//import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.grownited.entity.CarListingEntity;
//import com.grownited.entity.CarVariantEntity;
import com.grownited.entity.TransactionsEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.TransactionRepository;
import com.grownited.repository.UserRepository;


@Controller
public class TransactionController {
	
	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	TransactionRepository transactionsRepository;

	@GetMapping("/carTransaction")
	public String carTransaction(Model model) {
		List<CarListingEntity> allCarList =  carListingRepository.findAll();
		List<UserEntity> allUsers = userRepository.findAll();
		
		model.addAttribute("allCarList",allCarList);
		model.addAttribute("allUsers",allUsers);
		return "CarTransaction";
	}
	
	@PostMapping("/saveCarTransaction")
	public String saveCarTransaction(TransactionsEntity transactionsEntity) {
		transactionsRepository.save(transactionsEntity);
		return"AdminDashboard";
				
	}
	
	@GetMapping("/listCarTransaction")
	public String listCarTransaction(Model model) {
		
	List<TransactionsEntity> allTransaction = transactionsRepository.findAll();
	model.addAttribute("allTransaction",allTransaction);
		return"ListCarTransaction";
	}
	
	@GetMapping("deleteTransaction")
	public String deleteTransaction(Integer transactionId) {
		transactionsRepository.deleteById(transactionId);
		
		return"redirect:/listCarTransaction";
	}
	
	@GetMapping("/viewCarTransaction")
	public String viewCarTransaction(Integer transactionId, Model model) {

	    Optional<TransactionsEntity> transaction = transactionsRepository.findById(transactionId);

	    if (transaction.isEmpty()) {
	        return "redirect:/listCarTransaction"; // safe fallback
	    } else {
	    	TransactionsEntity carTransaction = transaction.get();
	        model.addAttribute("carTransaction", carTransaction);
	    }

	    return "ViewCarTransaction";
	}
}