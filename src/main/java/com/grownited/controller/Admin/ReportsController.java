package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    // ADD PAGE
    @GetMapping("/carReports")
    public String carReports(Model model) {
        model.addAttribute("allCar", carListingRepository.findAll());
        model.addAttribute("allUser", userRepository.findAll());
        return "Admin/CarReports";
    }

    // SAVE
    @PostMapping("/saveCarReport")
    public String saveCarReports(ReportsEntity reportsEntity) {
        reportsRepository.save(reportsEntity);
        return "redirect:/listCarReports";
    }

    // LIST
    @GetMapping("/listCarReports")
    public String listCarReports(Model model) {
        model.addAttribute("carReports", reportsRepository.findAll());
        return "Admin/ListCarReports";
    }

    // DELETE
    @GetMapping("/deleteCarReports")
    public String deleteCarReports(Integer reportId) {
        reportsRepository.deleteById(reportId);
        return "redirect:/listCarReports";
    }

    // VIEW 🔥 (FIXED)
    @GetMapping("/viewCarReports")
    public String viewCarReports(Integer reportId, Model model) {

        Optional<ReportsEntity> opt = reportsRepository.findById(reportId);

        if(opt.isEmpty()){
            return "redirect:/listCarReports";
        }

        model.addAttribute("report", opt.get()); // ✅ FIXED

        return "Admin/ViewCarReports";
    }

    // EDIT PAGE
    @GetMapping("/editCarReport")
    public String editCarReport(Integer reportId, Model model) {

        Optional<ReportsEntity> opt = reportsRepository.findById(reportId);

        if(opt.isPresent()){
            model.addAttribute("report", opt.get());
        }

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCar", carListingRepository.findAll());

        return "Admin/EditCarReport";
    }

    // UPDATE
    @PostMapping("/updateCarReport")
    public String updateCarReport(ReportsEntity reportsEntity) {
        reportsRepository.save(reportsEntity);
        return "redirect:/listCarReports";
    }
}