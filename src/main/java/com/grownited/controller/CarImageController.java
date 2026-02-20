package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.repository.CarImageRepository;
import com.grownited.repository.CarModelTypeRepository;

@Controller
public class CarImageController {

    

	@Autowired
	CarModelTypeRepository carModelTypeRepository;

	@Autowired
	CarImageRepository carImageRepository;
	
	@GetMapping("/carImage")
	public String carImage(Model model) {
	List<CarModelTypeEntity> allCarModel = carModelTypeRepository.findAll();
		model.addAttribute("allCarModel",allCarModel);
		return"CarImage";
	}
	
	@PostMapping("/saveCarImage")
	public String saveCarImage(CarImageEntity carImageEntity) {
		carImageRepository.save(carImageEntity);
		return"AdminDashboard";	
	}
	
	@GetMapping("/listCarImage")
	public String listCarImage(Model model) {
		List<CarImageEntity> carList = carImageRepository.findAll();
		model.addAttribute("carList",carList);
		return"ListCarImage";
	}
	
	@GetMapping("/deleteCarImage")
	public String deleteCarImage(Integer imageId) {
		carImageRepository.deleteById(imageId);
		return"redirect:/listCarImage";
	}
	
	@GetMapping("/viewCarImage")
	public String viewCarImage(Integer imageId,Model model) {
	Optional<CarImageEntity> image = carImageRepository.findById(imageId);
	
	if(image.isEmpty()) {
		return"redirect:/listCarImage";
	}else {
		CarImageEntity carImage = image.get();
		model.addAttribute("carImage",carImage);
	}
		return"ViewCarImage";
	}
	
	
}