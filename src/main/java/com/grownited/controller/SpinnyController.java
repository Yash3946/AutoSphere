package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarTransactionEntity;
import com.grownited.repository.CarImageRepository;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;

@Controller
public class SpinnyController {

	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	CarImageRepository carImageRepository;
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	CarTransactionRepository carTransactionRepository;

	@GetMapping ("customer-dashboard")
	public String spinny(Model model)
	{
		List<CarImageEntity> image = carImageRepository.findAll();
		model.addAttribute("image", image);
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

	// ⭐ BUY NOW PAGE
	@GetMapping("/buyNow")
	public String buyNow(Integer listingId, Model model) {

		Optional<CarListingEntity> op = carListingRepository.findById(listingId);

		if(op.isPresent()) {
			model.addAttribute("carListing", op.get());
		}

		return "buyNow";
	}
	
	@PostMapping("/confirmBooking")
	public String confirmBooking(CarTransactionEntity transaction) {

	    carTransactionRepository.save(transaction);

	    return "bookingSuccess";
	}

}