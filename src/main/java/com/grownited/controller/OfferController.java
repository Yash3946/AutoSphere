package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.OfferEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.OfferRepository;
import com.grownited.repository.UserRepository;

@Controller
public class OfferController {

   @Autowired
   OfferRepository offerRepository;

	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	UserRepository userRepository;

   
	@GetMapping("/carOffer")
	public String carOffer(Model model) {
	List<CarListingEntity> allCarList = carListingRepository.findAll();
	List<UserEntity> allUser =  userRepository.findAll();
	model.addAttribute("allCarList",allCarList);
	model.addAttribute("allUser",allUser);
		return"CarOffer";
	}
	
	
	
	@PostMapping("/saveCarOffer")
	public String saveOffer(OfferEntity offerEntity) {
		offerRepository.save(offerEntity);
		return"AdminDashboard";
	}
	
	@GetMapping("/listCarOffer")
	public String listCarOffer(Model model) {
		List<OfferEntity> allOffer =  offerRepository.findAll();
		model.addAttribute("allOffer",allOffer);
		return"ListOffer";
	}
	
	@GetMapping("deleteOffer")
	public String deleteOffer(Integer offerId) {
		offerRepository.deleteById(offerId);
		return"redirect:/listCarOffer";
	}
	
	@GetMapping("viewOffer")
	public String viewOffer(Integer offerId,Model model) {
	Optional<OfferEntity> carOffer = offerRepository.findById(offerId);
	
	if(carOffer.isEmpty()) {
		return"redirect:/listCarOffer";
	}else {
		OfferEntity Offer = carOffer.get();
		model.addAttribute("Offer",Offer);
	}
	
		return"ViewOffer";
	}
}

