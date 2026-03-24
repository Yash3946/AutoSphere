package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

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
		return"Admin/CarFeatures";
	}
	
	@PostMapping("/saveCarFeature")
	public String saveCarFeature(CarFeaturesEntity carFeaturesEntity) {
		carFeaturesRepository.save(carFeaturesEntity);		
		return"Admin/AdminDashboard";
	}
	
	
	@GetMapping("/listCarFeatures")
	public String listCarFeatures(Model model) {
		List<CarFeaturesEntity> allCarFeatures =  carFeaturesRepository.findAll();
		
		model.addAttribute("allCarFeatures",allCarFeatures);
		return"Admin/ListCarFeatures";
	}
	
	@GetMapping("deleteCarFeatures")
	public String deleteCarFeatures(Integer featureId) {
		carFeaturesRepository.deleteById(featureId);	
		return "redirect:/listCarFeatures";//do not open jsp , open another url -> listCarVariant
	}
	
	
	@GetMapping("/viewCarFeatures")
	public String viewCarFeatures(Integer featureId, Model model) {

	    Optional<CarFeaturesEntity> opFeature =carFeaturesRepository.findById(featureId);

	    if (opFeature.isEmpty()) {
	        return "redirect:/listCarFeatures"; // safe fallback
	    } else {
	        CarFeaturesEntity carFeature = opFeature.get();
	        model.addAttribute("carFeature", carFeature);
	    }

	    return "Admin/ViewCarFeature";
	}

	@GetMapping("/editCarFeature")
	public String editCarFeature(Integer featureId, Model model) {

	    Optional<CarFeaturesEntity> op = carFeaturesRepository.findById(featureId);

	    if (op.isEmpty()) {
	        return "redirect:/listCarFeatures";
	    } else {
	        model.addAttribute("carFeature", op.get());

	        List<CarModelTypeEntity> allCarType = carModelTypeRepository.findAll();
	        model.addAttribute("allCarType", allCarType);
	    }

	    return "Admin/EditCarFeature";
	}
	
	@PostMapping("/updateCarFeature")
	public String updateCarFeature(CarFeaturesEntity carFeaturesEntity) {

	    carFeaturesRepository.save(carFeaturesEntity); // auto update if ID present

	    return "redirect:/listCarFeatures";
	}
	
	
		
}