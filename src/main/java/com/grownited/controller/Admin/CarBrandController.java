package com.grownited.controller.Admin;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CarBrandEntity;
import com.grownited.repository.CarBrandRepository;

@Controller
public class CarBrandController {

    @Autowired
    CarBrandRepository carBrandRepository;

    @Autowired
    Cloudinary cloudinary;

    @GetMapping("/addbrand")
    public String homepage() {
        return "Admin/AddBrand";
    }

    // 🔥 CLOUDINARY UPLOAD
    @PostMapping("/savebrand")
    public String saveCategory(CarBrandEntity carBrandEntity,
                               @RequestParam("logoFile") MultipartFile file) {

        try {

            // 🔥 Upload to Cloudinary (logo folder)
            Map uploadResult = cloudinary.uploader().upload(
                    file.getBytes(),
                    ObjectUtils.asMap("folder", "brand_logos")
            );

            String imageUrl = (String) uploadResult.get("secure_url");

            // 🔥 Save URL in DB
            carBrandEntity.setLogoUrl(imageUrl);

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

        return "Admin/ListBrand";
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

        return "Admin/ViewCarBrand";
    }
}