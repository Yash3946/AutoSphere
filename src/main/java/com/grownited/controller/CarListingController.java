package com.grownited.controller;
import com.grownited.repository.SavedListingRepository;
import com.grownited.repository.UserRepository;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarBrandRepository;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.CarVariantRepository;

@Controller
public class CarListingController {

    

	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	CarBrandRepository carBrandRepository;
	
	@Autowired
	CarModelTypeRepository carModelTypeRepository;
	
	@Autowired
	CarVariantRepository carVariantRepository;
	
	@Autowired
	UserRepository userRepository;

	
	@GetMapping("/carListing")
	public String carListing(Model model) {
	List<UserEntity> allUser = 	userRepository.findAll();
	  List<CarBrandEntity> allCarBrand	= carBrandRepository.findAll();
	  List<CarModelTypeEntity> allCarModel =  carModelTypeRepository.findAll();
	  List<CarVariantEntity> allCarVariant =  carVariantRepository.findAll();
	  model.addAttribute("allUser",allUser);
	  model.addAttribute("allCarBrand",allCarBrand);
	  model.addAttribute("allCarModel",allCarModel);
	  model.addAttribute("allCarVariant",allCarVariant);
		return"CarListing";
	}
	
	@PostMapping("saveCarListing")
	public String saveCarList(CarListingEntity carListingEntity) {
		carListingRepository.save(carListingEntity);
		return"AdminDashboard"; 
	}
	
	@GetMapping("allCarList")
	public String alLCarList(Model model) {
		List<CarListingEntity> allCarList =  carListingRepository.findAll();
		model.addAttribute("allCarList",allCarList);
		return"AllCarList";
	}
	
	@GetMapping("deleteCarListing")
	public String deleteCarListing(Integer listingId) {
		carListingRepository.deleteById(listingId);
		return"redirect:/allCarList";
	}
	
	@GetMapping("/viewCarListing")
	public String viewCarListing(Integer listingId, Model model) {

	    Optional<CarListingEntity> opListing =
	            carListingRepository.findById(listingId);

	    if (opListing.isEmpty()) {
	        return "redirect:/allCarList"; // safe fallback
	    } else {
	        CarListingEntity carListing = opListing.get();
	        model.addAttribute("carListing", carListing);
	    }

	    return "ViewCarListing";
	}
}	