package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.CarVariantEntity;
import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.CarVariantRepository;

@Controller
public class CarVariantController {

    @Autowired
    CarVariantRepository carVariantRepository;

    @Autowired
    CarModelTypeRepository carModelTypeRepository;

    // ===================== ADD PAGE =====================
    @GetMapping("/newCarVariant")
    public String newCarVariant(Model model) {

        List<CarModelTypeEntity> allCarType = carModelTypeRepository.findAll();
        model.addAttribute("allCarType", allCarType);

        return "Admin/NewCarVariant";
    }

    // ===================== SAVE =====================
    @PostMapping("/saveCarVariant")
    public String saveCarVariant(CarVariantEntity carVariantEntity) {

        carVariantRepository.save(carVariantEntity);

        return "redirect:/listCarVariant";
    }

    // ===================== LIST =====================
    @GetMapping("/listCarVariant")
    public String listCarVariant(Model model) {

        List<CarVariantEntity> allCarVariant = carVariantRepository.findAll();
        model.addAttribute("allCarVariant", allCarVariant);

        return "Admin/ListCarVariant";
    }

    // ===================== DELETE =====================
    @GetMapping("/deleteCarVariant")
    public String deleteCarVariant(@RequestParam Integer variantId) {

        carVariantRepository.deleteById(variantId);

        return "redirect:/listCarVariant";
    }

    // ===================== VIEW =====================
    @GetMapping("/viewCarVariant")
    public String viewCarVariant(@RequestParam Integer variantId, Model model) {

        Optional<CarVariantEntity> opVariant = carVariantRepository.findById(variantId);

        if (opVariant.isEmpty()) {
            return "redirect:/listCarVariant";
        }

        model.addAttribute("carVariant", opVariant.get());

        return "Admin/ViewCarVariant";
    }

    // ===================== EDIT PAGE =====================
    @GetMapping("/editCarVariant")
    public String editCarVariant(@RequestParam Integer variantId, Model model) {

        Optional<CarVariantEntity> op = carVariantRepository.findById(variantId);

        if (op.isEmpty()) {
            return "redirect:/listCarVariant";
        }

        model.addAttribute("carVariant", op.get());

        // dropdown ke liye
        List<CarModelTypeEntity> allCarType = carModelTypeRepository.findAll();
        model.addAttribute("allCarType", allCarType);

        return "Admin/EditCarVariant";
    }

    // ===================== UPDATE =====================
    @PostMapping("/updateCarVariant")
    public String updateCarVariant(CarVariantEntity variant) {

        Optional<CarVariantEntity> op = carVariantRepository.findById(variant.getVariantId());

        if (op.isEmpty()) {
            return "redirect:/listCarVariant";
        }

        CarVariantEntity dbVariant = op.get();

        dbVariant.setVariantName(variant.getVariantName());
        dbVariant.setExShowroomPrice(variant.getExShowroomPrice());
        dbVariant.setMileage(variant.getMileage());
        dbVariant.setEngine(variant.getEngine());
        dbVariant.setPower(variant.getPower());
        dbVariant.setTorque(variant.getTorque());
        dbVariant.setFuelType(variant.getFuelType());
        dbVariant.setTransmission(variant.getTransmission());
        dbVariant.setActive(variant.isActive());

        carVariantRepository.save(dbVariant);

        return "redirect:/listCarVariant";
    }
}