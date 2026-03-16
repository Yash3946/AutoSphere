package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarTransactionEntity;
import com.grownited.repository.CarBrandRepository;
import com.grownited.repository.CarImageRepository;

@Controller
public class SpinnyController {

    

	@Autowired
	CarImageRepository carImageRepository;
	
	@Autowired
	CarListingRepository carListingRepository;

	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	CarTransactionRepository carTransactionRepository;
	
	@Autowired
	CarBrandRepository carBrandRepository;



	@GetMapping ("/customer-dashboard")
	public String spinny(Model model)
	{
		List<CarImageEntity> image = carImageRepository.findAll();
		List<CarBrandEntity> brand = carBrandRepository.findAll();
			
		model.addAttribute("image", image);
		model.addAttribute("brand",brand);
		return "spinny";
	}
	
	
	@GetMapping("/CustomerCarList")
	public String customerCarList(Model model){

	    List<CarListingEntity> customerCarList = carListingRepository.findAll();

	    model.addAttribute("customerCarList", customerCarList);

	    return "CustomerCarList";
	}
	
	@GetMapping("/customerViewCarListing")
	public String customerViewCarListing(Integer listingId, Model model){

	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);

	    if(op.isPresent()){
	        model.addAttribute("carListing", op.get());
	    }

	    return "CustomerViewCarListing"; 
	}
	
	
	
	
	// ⭐ BUY NOW PAGE
	@GetMapping("/buyNow")
	public String buyNow(@RequestParam("listingId") Integer listingId, Model model, HttpSession session) {

	    // Check if user is logged in
	    if(session.getAttribute("user") == null) {
	        return "redirect:/login"; // redirect to login if user not in session
	    }

	    // Get car listing
	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);
	    if(op.isPresent()) {
	        model.addAttribute("carListing", op.get());
	    } else {
	        return "redirect:/CustomerCarList"; // fallback if car not found
	    }

	    return "buyNow";
	}


		
		@PostMapping("/confirmBooking")
		public String confirmBooking(CarTransactionEntity transaction) {

		    carTransactionRepository.save(transaction);

		    return "bookingSuccess";
		}

}