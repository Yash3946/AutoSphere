package com.grownited.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.SavedListingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.SavedListingRepository;
import com.grownited.repository.UserRepository;

@Controller
public class CarSavedListingController {

    @Autowired
    SavedListingRepository savedListingRepository;

    
    @Autowired
    UserRepository userRepository;
    
    @Autowired
    CarListingRepository carListingRepository;
    
    // ================= NEW FORM =================

    @GetMapping("/newSavedListing")
    public String newSavedListing(Model model) {
     List<CarListingEntity> carList =	carListingRepository.findAll();
     List<UserEntity> all = userRepository.findAll();
     model.addAttribute("carList",carList);
     model.addAttribute("all",all);
    	
        return "NewSavedListing";
    }

    // ================= SAVE =================

    @PostMapping("/saveSavedListing")
    public String saveSavedListing(SavedListingEntity savedListingEntity) {

        // auto set current date
        savedListingEntity.setAddedAt(Date.valueOf(LocalDate.now()));

        savedListingRepository.save(savedListingEntity);

        return "AdminDashboard";
    }

    // ================= LIST =================

    @GetMapping("/listSavedListing")
    public String listSavedListing(Model model) {

        List<SavedListingEntity> allSaved = savedListingRepository.findAll();
        model.addAttribute("allSaved", allSaved);

        return "ListSavedListing";
    }

    // ================= DELETE =================

    @GetMapping("/deleteSavedListing")
    public String deleteSavedListing(Integer wishlistId) {

        if (wishlistId != null) {
            savedListingRepository.deleteById(wishlistId);
        }

        return "redirect:/listSavedListing";
    }

    // ================= VIEW =================

    @GetMapping("/viewSavedListing")
    public String viewSavedListing(Integer wishlistId, Model model) {
    	Optional<SavedListingEntity> op = savedListingRepository.findById(wishlistId);

        if (op.isEmpty()) {
            return "redirect:/listSavedListing";
        }else {
        	SavedListingEntity saved = op.get();
        	model.addAttribute("saved",saved);
        }

  
        return "ViewSavedListing";
    }
}