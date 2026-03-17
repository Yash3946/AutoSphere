package com.grownited.controller.Admin;

import java.io.IOException;
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
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.repository.CarImageRepository;
import com.grownited.repository.CarModelTypeRepository;

@Controller
public class CarImageController {

    @Autowired
    CarModelTypeRepository carModelTypeRepository;

    @Autowired
    CarImageRepository carImageRepository;

    @Autowired
    Cloudinary cloudinary;

    @GetMapping("/carImage")
    public String carImage(Model model) {

        List<CarModelTypeEntity> allCarModel = carModelTypeRepository.findAll();
        model.addAttribute("allCarModel", allCarModel);

        return "Admin/CarImage";
    }

    @PostMapping("/saveCarImage")
    public String saveCarImage(CarImageEntity carImageEntity,
            @RequestParam("imageFile") MultipartFile imageFile) {

        try {

            Map uploadResult = cloudinary.uploader().upload(imageFile.getBytes(), null);

            String imageURL = uploadResult.get("secure_url").toString();

            carImageEntity.setImageURL(imageURL);

            carImageRepository.save(carImageEntity);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/listCarImage";
    }

    @GetMapping("/listCarImage")
    public String listCarImage(Model model) {

        List<CarImageEntity> carList = carImageRepository.findAll();

        model.addAttribute("carList", carList);

        return "Admin/ListCarImage";
    }

    @GetMapping("/deleteCarImage")
    public String deleteCarImage(Integer imageId) {

        carImageRepository.deleteById(imageId);

        return "redirect:/listCarImage";
    }

    @GetMapping("/viewCarImage")
    public String viewCarImage(Integer imageId, Model model) {

        Optional<CarImageEntity> image = carImageRepository.findById(imageId);

        if (image.isEmpty()) {
            return "redirect:/listCarImage";
        } else {
            CarImageEntity carImage = image.get();
            model.addAttribute("carImage", carImage);
        }

        return "Admin/ViewCarImage";
    }

}