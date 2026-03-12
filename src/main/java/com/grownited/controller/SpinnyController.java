package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.repository.CarListingRepository;

@Controller
public class SpinnyController {

	@Autowired
	CarListingRepository carListingRepository;

	@GetMapping("customer-dashboard")
	public String spinny() {
		return "spinny";
	}

	@GetMapping("/customerCarList")
	public String customerCarList(Model model) {

		List<CarListingEntity> customerCarList = carListingRepository.findAll();
		model.addAttribute("customerCarList", customerCarList);

		return "CustomerCarList";
	}

	@GetMapping("/customerViewCarListing")
	public String customerViewCarListing(Integer listingId, Model model) {

		Optional<CarListingEntity> op = carListingRepository.findById(listingId);

		if (op.isPresent()) {
			model.addAttribute("carListing", op.get());
		}

		return "CustomerViewCarListing";
	}
}