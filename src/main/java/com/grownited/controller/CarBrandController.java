package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarBrandEntity;
import com.grownited.repository.CarBrandRepository;


@Controller
public class CarBrandController {

    @Autowired
    CarBrandRepository carBrandRepository;
  

    
    @GetMapping("/addbrand")
    public String homepage() {
        return "AddBrand";
    }
    
    @PostMapping("savebrand")
	public String saveCategory(CarBrandEntity carBrandEntity) {

		carBrandEntity.setActive(true);
		
		//insert 
		carBrandRepository.save(carBrandEntity); 
		return "AdminDashboard";
	}
     
 

    // Save Brand
//    @GetMapping("/savebrand")
//    public String saveBrand() {
//        carBrandRepository.save(carBrandEntity);
//        return "ListBrand"; // 🔥 important
//    }

//    // List Brand
    @GetMapping("/listbrand")
    public String listBrand(Model model) {
        List<CarBrandEntity> brandList = carBrandRepository.findAll();
        model.addAttribute("brandList", brandList);
        return "ListBrand";
    }
    
  
}