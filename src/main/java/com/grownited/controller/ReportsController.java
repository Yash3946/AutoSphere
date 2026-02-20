package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.ReportsEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.ReportsRepository;
import com.grownited.repository.UserRepository;

@Controller
public class ReportsController {

   
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CarListingRepository carListingRepository;
	
	@Autowired
	ReportsRepository reportsRepository;

    

	@GetMapping("/carReports")
	public String carReports(Model model) {
		List<UserEntity> allUser =  userRepository.findAll();
		List<CarListingEntity> allCar =  carListingRepository.findAll();
		
		model.addAttribute("allCar",allCar);
		model.addAttribute("allUser",allUser);
		return"CarReports";
		
	}
	
	@PostMapping("/saveCarReport")
	public String saveCarReports(ReportsEntity reportsEntity) {		
		reportsRepository.save(reportsEntity);		
		return"AdminDashboard";
	}
	
	@GetMapping("/listCarReports")
	public String listCarReports(Model model) {
	List<ReportsEntity> carReports = 	reportsRepository.findAll();
	model.addAttribute("carReports",carReports);
		return"ListCarReports";
	}
	
	@GetMapping("/deleteCarReports")
	public String deleteCarReports(Integer reportId) {		
		reportsRepository.deleteById(reportId);
		return"redirect:/listCarReports";
	}
	
	@GetMapping("/viewCarReports")
	public String viewCarReports(Integer reportId,Model model) {
		Optional<ReportsEntity> allReports =  reportsRepository.findById(reportId);
		
		if(allReports.isEmpty()) {
			return"redirect:/listCarReports";
		}else {
			ReportsEntity Report = allReports.get();
			model.addAttribute("Report",Report);
		}		
		return"ViewCarReports";
	}
}