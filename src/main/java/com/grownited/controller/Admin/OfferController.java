package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.OfferEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.OfferRepository;
import com.grownited.repository.UserRepository;

@Controller
public class OfferController {

    @Autowired
    OfferRepository offerRepository;

    @Autowired
    CarListingRepository carListingRepository;

    @Autowired
    UserRepository userRepository;

    // ADD PAGE
    @GetMapping("/carOffer")
    public String carOffer(Model model) {
        model.addAttribute("allCarList", carListingRepository.findAll());
        model.addAttribute("allUser", userRepository.findAll());
        return "Admin/CarOffer";
    }

    // SAVE
    @PostMapping("/saveCarOffer")
    public String saveOffer(OfferEntity offerEntity) {
        offerRepository.save(offerEntity);
        return "redirect:/listCarOffer";
    }

    // LIST
    @GetMapping("/listCarOffer")
    public String listCarOffer(Model model) {
        model.addAttribute("allOffer", offerRepository.findAll());
        return "Admin/ListOffer";
    }

    // DELETE
    @GetMapping("/deleteOffer")
    public String deleteOffer(Integer offerId) {
        offerRepository.deleteById(offerId);
        return "redirect:/listCarOffer";
    }

    // 🔥 VIEW (IMPORTANT FIX)
    @GetMapping("/viewOffer")
    public String viewOffer(Integer offerId, Model model) {

        Optional<OfferEntity> offer = offerRepository.findById(offerId);

        if (offer.isEmpty()) {
            return "redirect:/listCarOffer";
        }

        model.addAttribute("offer", offer.get());
        return "Admin/ViewOffer";
    }

    // 🔥 EDIT
    @GetMapping("/editOffer")
    public String editOffer(Integer offerId, Model model) {

        Optional<OfferEntity> offer = offerRepository.findById(offerId);

        if (offer.isPresent()) {
            model.addAttribute("offer", offer.get());
        }

        model.addAttribute("allCarList", carListingRepository.findAll());
        model.addAttribute("allUser", userRepository.findAll());

        return "Admin/EditOffer";
    }

    // 🔥 UPDATE
    @PostMapping("/updateOffer")
    public String updateOffer(OfferEntity offerEntity) {
        offerRepository.save(offerEntity);
        return "redirect:/listCarOffer";
    }
}