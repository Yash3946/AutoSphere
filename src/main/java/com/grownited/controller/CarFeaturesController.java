package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarFeaturesEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.repository.CarFeaturesRepository;
import com.grownited.repository.CarModelTypeRepository;

@Controller
public class CarFeaturesController {

	@Autowired
	CarFeaturesRepository carFeaturesRepository;
	
	@Autowired
	CarModelTypeRepository carModelTypeRepository; 
	
	@GetMapping("/carFeatures")
	public String carFeatures(Model model) {
		List<CarModelTypeEntity> allCarType =  carModelTypeRepository.findAll();
		model.addAttribute("allCarType",allCarType);
		return"CarFeatures";
	}
	
	@PostMapping("/saveCarFeature")
	public String saveCarFeature(CarFeaturesEntity carFeaturesEntity) {
		carFeaturesRepository.save(carFeaturesEntity);		
		return"AdminDashboard";
	}
	
	
	@GetMapping("/listCarFeatures")
	public String listCarFeatures(Model model) {
		List<CarFeaturesEntity> allCarFeatures =  carFeaturesRepository.findAll();
		
		model.addAttribute("allCarFeatures",allCarFeatures);
		return"ListCarFeatures";
	}
	
	@GetMapping("deleteCarFeatures")
	public String deleteCarFeatures(Integer featureId) {
		carFeaturesRepository.deleteById(featureId);	
		return "redirect:/listCarFeatures";//do not open jsp , open another url -> listCarVariant
	}
	
		
}