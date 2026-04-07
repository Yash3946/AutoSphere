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
import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.repository.*;

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

    @Autowired
    Cloudinary cloudinary;

    // ================== ADD PAGE ==================
    @GetMapping("/carListing")
    public String carListing(Model model) {

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCarBrand", carBrandRepository.findAll());
        model.addAttribute("allCarModel", carModelTypeRepository.findAll());
        model.addAttribute("allCarVariant", carVariantRepository.findAll());

        return "Admin/CarListing";
    }

    // ================== SAVE ==================
    @PostMapping("/saveCarListing")
    public String saveCarList(CarListingEntity carListingEntity,
                             @RequestParam("imageFile") MultipartFile file) {

        try {
            Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);
            String imageUrl = uploadResult.get("secure_url").toString();
            carListingEntity.setImageUrl(imageUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 🔥 IMPORTANT: First get the model to fetch body_type
        if (carListingEntity.getModelId() != null) {
            Optional<CarModelTypeEntity> modelOpt = carModelTypeRepository.findById(carListingEntity.getModelId());
            if (modelOpt.isPresent()) {
                CarModelTypeEntity model = modelOpt.get();
                carListingEntity.setModelName(model.getModelName());
                
                // 🔥 CRITICAL: Set body_type from CarModelType
                if (model.getBodyType() != null && !model.getBodyType().isEmpty()) {
                    carListingEntity.setBodyType(model.getBodyType());
                    System.out.println("Body type set from model: " + model.getBodyType());
                } else {
                    // Default fallback
                    carListingEntity.setBodyType("SUV");
                    System.out.println("Model had no body type, set default: SUV");
                }
            }
        }

        // Set brand name
        if (carListingEntity.getBrandId() != null) {
            Optional<CarBrandEntity> brandOpt = carBrandRepository.findById(carListingEntity.getBrandId());
            if (brandOpt.isPresent()) {
                carListingEntity.setBrandName(brandOpt.get().getBrandName());
            }
        }

        // Set variant name
        if (carListingEntity.getVariantId() != null) {
            Optional<CarVariantEntity> variantOpt = carVariantRepository.findById(carListingEntity.getVariantId());
            if (variantOpt.isPresent()) {
                carListingEntity.setVariantName(variantOpt.get().getVariantName());
            }
        }

        // Final fallback - if still null
        if (carListingEntity.getBodyType() == null || carListingEntity.getBodyType().isEmpty()) {
            carListingEntity.setBodyType("SUV");
        }

        carListingRepository.save(carListingEntity);
        return "redirect:/allCarList";
    }

    // ================== LIST ==================
    @GetMapping("/allCarList")
    public String alLCarList(Model model) {
        model.addAttribute("allCarList", carListingRepository.findAll());
        return "Admin/AllCarList";
    }

    // ================== DELETE ==================
    @GetMapping("/deleteCarListing")
    public String deleteCarListing(Integer listingId) {
        carListingRepository.deleteById(listingId);
        return "redirect:/allCarList";
    }

    // ================== VIEW ==================
    @GetMapping("/viewCarListing")
    public String viewCarListing(Integer listingId, Model model) {

        Optional<CarListingEntity> car = carListingRepository.findById(listingId);
        car.ifPresent(c -> model.addAttribute("carListing", c));

        return "Admin/ViewCarListing";
    }

    // ================== EDIT PAGE ==================
    @GetMapping("/editCarListing")
    public String editCarListing(Integer listingId, Model model) {

        Optional<CarListingEntity> car = carListingRepository.findById(listingId);
        car.ifPresent(c -> model.addAttribute("car", c));

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCarBrand", carBrandRepository.findAll());
        model.addAttribute("allCarModel", carModelTypeRepository.findAll());
        model.addAttribute("allCarVariant", carVariantRepository.findAll());

        return "Admin/EditCarListing";
    }

    // ================== UPDATE ==================
    @PostMapping("/updateCarListing")
    public String updateCarListing(CarListingEntity carListingEntity,
                                   @RequestParam("imageFile") MultipartFile file) {

        try {
            if (!file.isEmpty()) {
                Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);
                String imageUrl = uploadResult.get("secure_url").toString();
                carListingEntity.setImageUrl(imageUrl);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // ✅ FIXED PART
        carModelTypeRepository.findById(carListingEntity.getModelId())
            .ifPresent(m -> {
                carListingEntity.setModelName(m.getModelName());
                carListingEntity.setBodyType(m.getBodyType());
            });

        // brand
        carBrandRepository.findById(carListingEntity.getBrandId())
            .ifPresent(b -> carListingEntity.setBrandName(b.getBrandName()));

        // variant
        carVariantRepository.findById(carListingEntity.getVariantId())
            .ifPresent(v -> carListingEntity.setVariantName(v.getVariantName()));

        carListingRepository.save(carListingEntity);

        return "redirect:/allCarList";
    }

    // ================== BRAND FILTER ==================
    @GetMapping("/cars-by-brand")
    public String getCarsByBrand(@RequestParam("brand") String brand, Model model) {

        List<CarListingEntity> cars = carListingRepository.findByBrandNameIgnoreCase(brand);

        model.addAttribute("cars", cars);
        model.addAttribute("brand", brand);

        return "Customer/carByBrand";
    }

    // ================== CAR DETAILS ==================
    @GetMapping("/car-details")
    public String carDetails(@RequestParam("id") Integer id, Model model) {

        CarListingEntity car = carListingRepository.findById(id).orElse(null);
        model.addAttribute("car", car);

        return "Customer/CustomerViewCarListing";
    }
}