package com.grownited.controller;

import java.io.File;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grownited.entity.CarBrandEntity;
import com.grownited.repository.CarBrandRepository;

@Controller
public class CarBrandController {

    @Autowired
    CarBrandRepository carBrandRepository;

    // Add Brand Page
    @GetMapping("/addbrand")
    public String homepage() {
        return "AddBrand";
    }

    // Save Brand
    @PostMapping("/savebrand")
    public String saveCategory(CarBrandEntity carBrandEntity,
                               @RequestParam("logoFile") MultipartFile file) {

        try {

            String uploadDir = "C:/uploads/brands/";

            String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();

            // ✅ Correct class name
            File saveFile = new File(uploadDir + fileName);

            saveFile.getParentFile().mkdirs();

            file.transferTo(saveFile);

            carBrandEntity.setLogoUrl("/uploads/brands/" + fileName);

        } catch (Exception e) {
            e.printStackTrace();
        }

        carBrandEntity.setActive(true);

        carBrandRepository.save(carBrandEntity);

        return "redirect:/listbrand";
    }

    // List Brand
    @GetMapping("/listbrand")
    public String listBrand(Model model) {

        List<CarBrandEntity> brandList = carBrandRepository.findAll();

        model.addAttribute("brandList", brandList);

        return "ListBrand";
    }

    // Delete Brand
    @GetMapping("/deletebrand")
    public String deletebrand(Integer brandId) {

        carBrandRepository.deleteById(brandId);

        return "redirect:/listbrand";
    }

    // View Brand
    @GetMapping("/viewCarBrand")
    public String viewCarBrand(Integer brandId, Model model) {

        Optional<CarBrandEntity> opBrand = carBrandRepository.findById(brandId);

        if (opBrand.isEmpty()) {
            return "redirect:/listbrand";
        }

        CarBrandEntity carBrand = opBrand.get();

        model.addAttribute("carBrand", carBrand);

        return "ViewCarBrand";
    }
}