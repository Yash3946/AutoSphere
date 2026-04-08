package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarTransactionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class TransactionController {

	@Autowired
	CarListingRepository carListingRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	CarTransactionRepository carTransactionRepository;

	// ================= FORM PAGE =================
	@GetMapping("/carTransaction")
	public String carTransaction(Model model) {

		List<CarListingEntity> allCarList = carListingRepository.findAll();
		List<UserEntity> allUsers = userRepository.findAll();

		model.addAttribute("allCarList", allCarList);
		model.addAttribute("allUsers", allUsers);

		return "Admin/CarTransaction";
	}

	// ================= SAVE =================
	@PostMapping("/saveCarTransaction")
	public String saveCarTransaction(CarTransactionEntity transaction) {

		carTransactionRepository.save(transaction);

		return "redirect:/listCarTransaction";
	}

	// ================= LIST =================
	@GetMapping("/listCarTransaction")
	public String listCarTransaction(Model model) {

		List<CarTransactionEntity> allTransaction = carTransactionRepository.findAll();

		model.addAttribute("allTransaction", allTransaction);

		return "Admin/ListCarTransaction";
	}

	// ================= DELETE =================
	@GetMapping("/deleteTransaction")
	public String deleteTransaction(Integer transactionId) {

		carTransactionRepository.deleteById(transactionId);

		return "redirect:/listCarTransaction";
	}

	// ================= VIEW =================
	@GetMapping("/viewCarTransaction")
	public String viewCarTransaction(Integer transactionId, Model model) {

		Optional<CarTransactionEntity> transaction = carTransactionRepository.findById(transactionId);

		if (transaction.isPresent()) {
			model.addAttribute("carTransaction", transaction.get());
		} else {
			return "redirect:/listCarTransaction";
		}

		return "Admin/ViewCarTransaction";
	}

	// ================= EDIT =================
	@GetMapping("/editCarTransaction")
	public String editCarTransaction(Integer transactionId, Model model) {

		Optional<CarTransactionEntity> transaction = carTransactionRepository.findById(transactionId);

		if (transaction.isPresent()) {
			model.addAttribute("carTransaction", transaction.get());
		}

		model.addAttribute("allCarList", carListingRepository.findAll());
		model.addAttribute("allUsers", userRepository.findAll());

		return "Admin/EditCarTransaction";
	}

	// ================= UPDATE =================
	@PostMapping("/updateCarTransaction")
	public String updateCarTransaction(CarTransactionEntity transaction) {

		carTransactionRepository.save(transaction);

		return "redirect:/listCarTransaction";
	}
}