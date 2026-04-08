package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

			return "Admin/NewCarModelType";
		}

		@PostMapping("savecartype")
		public String savecartype(CarModelTypeEntity carModelTypeEntity) {
			carModelTypeRepository.save(carModelTypeEntity);
			return "Admin/AdminDashboard"; 
		}
		
		@GetMapping("listCarModel")
		public String listCarModel(Model model) {		
			List<CarModelTypeEntity> allCarModel = carModelTypeRepository.findAll();
			model.addAttribute("allCarModel",allCarModel);
			return"Admin/ListCarModel";
		}
		
		@GetMapping("deleteCarModel")
		public String deleteCarModel(Integer modelId) {
			carModelTypeRepository.deleteById(modelId);
			return "redirect:/listCarModel";
		}	
		
		
		@GetMapping("viewCarModel")
		public String viewCarModel(Integer modelId, Model model) {

		    Optional<CarModelTypeEntity> opModel = carModelTypeRepository.findById(modelId);

		    if (opModel.isEmpty()) {
		        return "redirect:/listCarModel"; // safe fallback
		    } else {
		        CarModelTypeEntity carModel = opModel.get();
		        model.addAttribute("carModel", carModel);
		    }

		    return "Admin/ViewCarModel";
		}	
		
}