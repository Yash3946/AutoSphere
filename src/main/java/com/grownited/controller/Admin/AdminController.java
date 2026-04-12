package com.grownited.controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;
import com.grownited.repository.OfferRepository;
import com.grownited.repository.TransactionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    CarListingRepository carListingRepository;

    @Autowired
    TransactionRepository transactionRepository;

    @Autowired
    OfferRepository offerRepository;
    
    @Autowired
    CarTransactionRepository carTransactionRepository;

    @GetMapping(value = {"admin-dashboard","/"})
    public String adminDashboard(Model model) {

        Long totalUser = userRepository.count();

        Long totalAvailable = carListingRepository.countByStatus("Available");

        // ✅ BOOKINGS
        Long totalTransaction = carTransactionRepository
                .countByTransactionStatus("COMPLETED");

        // ✅ REVENUE
        Double totalRevenue = carTransactionRepository.getTotalRevenue();

        if (totalRevenue == null) {
            totalRevenue = 0.0;
        }

        // 🔥 SEND DATA TO JSP
        model.addAttribute("totalUser", totalUser);
        model.addAttribute("totalAvailable", totalAvailable);
        model.addAttribute("totalTransaction", totalTransaction);
        model.addAttribute("totalRevenue", totalRevenue);

        return "Admin/AdminDashboard";
    }

     
}