package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarBrandRepository;
import com.grownited.repository.CarImageRepository;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.CarVariantRepository;
import com.grownited.repository.UserRepository;

@Controller
public class CarListingController {

    @Autowired
    CarListingRepository carListingRepository;

    @Autowired
    CarBrandRepository carBrandRepository;

    @Autowired
    CarModelTypeRepository carModelTypeRepository;

    @Autowired
    CarVariantRepository carVariantRepository;

    @Autowired
    UserRepository userRepository;
    

    // Add Car Listing Page
    @GetMapping("/carListing")
    public String carListing(Model model) {

        List<UserEntity> allUser = userRepository.findAll();
        List<CarBrandEntity> allCarBrand = carBrandRepository.findAll();
        List<CarModelTypeEntity> allCarModel = carModelTypeRepository.findAll();
        List<CarVariantEntity> allCarVariant = carVariantRepository.findAll();
       

        model.addAttribute("allUser", allUser);
        model.addAttribute("allCarBrand", allCarBrand);
        model.addAttribute("allCarModel", allCarModel);
        model.addAttribute("allCarVariant", allCarVariant);
       

        return "CarListing";
    }

    // Save Car Listing
    @PostMapping("/saveCarListing")
    public String saveCarList(CarListingEntity carListingEntity) {

        // Brand Name
        Optional<CarBrandEntity> brand =
                carBrandRepository.findById(carListingEntity.getBrandId());

        if (brand.isPresent()) {
            carListingEntity.setBrandName(brand.get().getBrandName());
        }

        // Model Name
        Optional<CarModelTypeEntity> model =
                carModelTypeRepository.findById(carListingEntity.getModelId());

        if (model.isPresent()) {
            carListingEntity.setModelName(model.get().getModelName());
        }

        // Variant Name
        Optional<CarVariantEntity> variant =
                carVariantRepository.findById(carListingEntity.getVariantId());

        if (variant.isPresent()) {
            carListingEntity.setVariantName(variant.get().getVariantName());
        }

        carListingRepository.save(carListingEntity);

        return "redirect:/allCarList";
    }

    // Admin Car List
    @GetMapping("/allCarList")
    public String alLCarList(Model model) {

        List<CarListingEntity> allCarList = carListingRepository.findAll();

        model.addAttribute("allCarList", allCarList);

        return "AllCarList";
    }

    // Delete
    @GetMapping("/deleteCarListing")
    public String deleteCarListing(Integer listingId) {

        carListingRepository.deleteById(listingId);

        return "redirect:/allCarList";
    }

    // View
    @GetMapping("/viewCarListing")
    public String viewCarListing(Integer listingId, Model model) {

        Optional<CarListingEntity> car =
                carListingRepository.findById(listingId);

        if (car.isPresent()) {
            model.addAttribute("carListing", car.get());
        }

        return "ViewCarListing";
    }
}