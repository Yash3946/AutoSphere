package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarModelTypeEntity;
import com.grownited.repository.CarModelTypeRepository;

@Controller
public class CarModelTypeController {

	
	//Singleton design pattern 
		@Autowired
		CarModelTypeRepository carModelTypeRepository;
		
		
		
		@GetMapping("newcartype")
		public String newcartype() {
			
			return "NewCarModelType";
		}
		
		@PostMapping("savecartype")
		public String savecartype(CarModelTypeEntity carModelTypeEntity) {
			carModelTypeRepository.save(carModelTypeEntity);
			return "AdminDashboard"; 
		}
}