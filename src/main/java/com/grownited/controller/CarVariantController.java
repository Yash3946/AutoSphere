package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.CarVariantRepository;

@Controller
public class CarVariantController {

	@Autowired
	CarVariantRepository carVariantRepository;
	
	@Autowired
	CarModelTypeRepository carModelTypeRepository; 
	
	@GetMapping("/newCarVariant")
	public String newCarVariant(Model model) {
	List<CarModelTypeEntity> allCarType = carModelTypeRepository.findAll();	
	model.addAttribute("allCarType",allCarType);
	
		return"NewCarVariant";
	}
	
	@PostMapping("/saveCarVariant")
	public String saveCarVariant(CarVariantEntity carVariantEntity ) {
		carVariantRepository.save(carVariantEntity);
		return"redirect:/listCarVariant";
	}
	
	@GetMapping("/listCarVariant")
	public String listCarVariant(Model model) {
		List<CarVariantEntity> allCarVariant =  carVariantRepository.findAll();
		model.addAttribute("allCarVariant",allCarVariant);

		return"ListCarVariant";
	}
	
	@GetMapping("deleteCarVariant")
	public String deleteCarVariant(Integer variantId) {
		carVariantRepository.deleteById(variantId);
		
		return "redirect:/listCarVariant";//do not open jsp , open another url -> listCarVariant
	}
	
	@GetMapping("/viewCarVariant")
	public String viewCarVariant(Integer variantId, Model model) {

	    Optional<CarVariantEntity> opVariant = carVariantRepository.findById(variantId);

	    if (opVariant.isEmpty()) {
	        return "redirect:/listCarVariant"; // safe fallback
	    } else {
	        CarVariantEntity carVariant = opVariant.get();
	        model.addAttribute("carVariant", carVariant);
	    }

	    return "ViewCarVariant";
	}

}