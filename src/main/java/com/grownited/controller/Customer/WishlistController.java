package com.grownited.controller.Customer;

import java.util.List;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.WishlistEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.WishlistRepository;

@Controller
public class WishlistController {

    @Autowired
    WishlistRepository wishlistRepository;

    @Autowired
    CarListingRepository carListingRepository;

    // 🔥 ADD TO WISHLIST
    @GetMapping("/addToWishlist")
    public String addToWishlist(Integer listingId, HttpSession session){

        // 🔥 GET USER FROM SESSION
        UserEntity user = (UserEntity) session.getAttribute("user");

        if(user == null){
            return "redirect:/login";
        }

        Integer userId = user.getUserId();

        // 🔥 CHECK DUPLICATE
        boolean exists = wishlistRepository
                .existsByUser_UserIdAndCarListing_ListingId(userId, listingId);

        if(!exists){
            CarListingEntity car = carListingRepository.findById(listingId).get();

            WishlistEntity wishlist = new WishlistEntity();
            wishlist.setCarListing(car);
            wishlist.setUser(user); // 🔥 IMPORTANT

            wishlistRepository.save(wishlist);
        }

        return "redirect:/wishlist";
    }

    // 🔥 VIEW WISHLIST (USER-WISE)
    @GetMapping("/wishlist")
    public String wishlist(Model model, HttpSession session){

        // 🔥 GET USER FROM SESSION
        UserEntity user = (UserEntity) session.getAttribute("user");

        if(user == null){
            return "redirect:/login";
        }

        Integer userId = user.getUserId();

        List<WishlistEntity> wishlist =
                wishlistRepository.findByUser_UserId(userId);

        model.addAttribute("wishlist", wishlist);

        model.addAttribute("username", user.getFirstName());
        return "Customer/wishlist";
    }

    // 🔥 REMOVE
    @GetMapping("/removeWishlist")
    public String removeWishlist(Integer wishlistId){

        wishlistRepository.deleteById(wishlistId);

        return "redirect:/wishlist";
    }
}