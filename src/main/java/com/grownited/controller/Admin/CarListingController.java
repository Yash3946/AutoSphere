package com.grownited.controller.Admin;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarBrandRepository;
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

    @Autowired
    Cloudinary cloudinary;

    // Add Page
    @GetMapping("/carListing")
    public String carListing(Model model) {

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCarBrand", carBrandRepository.findAll());
        model.addAttribute("allCarModel", carModelTypeRepository.findAll());
        model.addAttribute("allCarVariant", carVariantRepository.findAll());

        return "Admin/CarListing";
    }

    // 🔥 SAVE WITH IMAGE
    @PostMapping("/saveCarListing")
    public String saveCarList(CarListingEntity carListingEntity,
                             @RequestParam("imageFile") MultipartFile file) {

        try {
            // Upload image to Cloudinary
            Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);

            String imageUrl = uploadResult.get("secure_url").toString();

            // Set image in listing
            carListingEntity.setImageUrl(imageUrl);

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Brand Name
        Optional<CarBrandEntity> brand =
                carBrandRepository.findById(carListingEntity.getBrandId());
        brand.ifPresent(b -> carListingEntity.setBrandName(b.getBrandName()));

        // Model Name
        Optional<CarModelTypeEntity> model =
                carModelTypeRepository.findById(carListingEntity.getModelId());
        model.ifPresent(m -> carListingEntity.setModelName(m.getModelName()));

        // Variant Name
        Optional<CarVariantEntity> variant =
                carVariantRepository.findById(carListingEntity.getVariantId());
        variant.ifPresent(v -> carListingEntity.setVariantName(v.getVariantName()));

        // Save
        carListingRepository.save(carListingEntity);

        return "redirect:/allCarList";
    }

    // List
    @GetMapping("/allCarList")
    public String alLCarList(Model model) {
        model.addAttribute("allCarList", carListingRepository.findAll());
        return "Admin/AllCarList";
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

        car.ifPresent(c -> model.addAttribute("carListing", c));

        return "Admin/ViewCarListing";
    }
}