package com.grownited.controller.Customer;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarTransactionEntity;
import com.grownited.repository.CarBrandRepository;
import com.grownited.repository.CarImageRepository;

@Controller
public class SpinnyController {

	@Autowired
	CarImageRepository carImageRepository;

	@Autowired
	CarListingRepository carListingRepository;

	@Autowired
	Cloudinary cloudinary;

	@Autowired
	CarTransactionRepository carTransactionRepository;

	@Autowired
	CarBrandRepository carBrandRepository;

//	@GetMapping("/customerLogin")
//	public String customerLogin() {
//		return "Admin/login";
//	}

	@GetMapping("/customer-dashboard")
	public String spinny(Model model) {
		 List<CarListingEntity> customerCarList = carListingRepository.findAll();
		List<CarImageEntity> image = carImageRepository.findAll();
		List<CarBrandEntity> brand = carBrandRepository.findAll();
		
		 model.addAttribute("customerCarList", customerCarList);
		model.addAttribute("image", image);
		model.addAttribute("brand", brand);
		return "Customer/spinny";
	}

	@GetMapping("/CustomerCarList")
	public String customerCarList(Model model) {

		List<CarListingEntity> customerCarList = carListingRepository.findAll();

		model.addAttribute("customerCarList", customerCarList);

		return "Customer/CustomerCarList";
	}

	@GetMapping("/customerViewCarListing")
	public String customerViewCarListing(Integer listingId, Model model) {

		Optional<CarListingEntity> op = carListingRepository.findById(listingId);

		if (op.isPresent()) {
			model.addAttribute("carListing", op.get());
		}

		return "Customer/CustomerViewCarListing";
	}
	
//	@GetMapping("/customerViewCarListing1")
//	public String customerViewCarListing1(Integer listingId, Model model) {
//
//		Optional<CarListingEntity> op = carListingRepository.findById(listingId);
//
//		if (op.isPresent()) {
//			model.addAttribute("carListing", op.get());
//		}
//
//		return "Customer/CustomerViewCarListing1";
//	}

	@GetMapping("/customerViewCarListing1")
	public String customerViewCarListing1(@RequestParam("listingId") Integer listingId, Model model) {

	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);

	    if(op.isPresent()) {
	        model.addAttribute("carListing", op.get());
	    }

	    return "Customer/CustomerViewCarListing1"; // 🔥 aa change karo
	}
	// ⭐ BUY NOW PAGE
	@GetMapping("/buyNow")
	public String buyNow(@RequestParam("listingId") Integer listingId,
	                     Model model,
	                     HttpSession session) {

	    // 🔒 Check if user logged in
	    if (session.getAttribute("user") == null) {
	        return "redirect:/login";
	    }

	    // 🚗 Fetch car by ID
	    CarListingEntity car = carListingRepository.findById(listingId).orElse(null);

	    // ❌ If car not found
	    if (car == null) {
	        return "redirect:/CustomerCarList";
	    }

	    // 📦 Send to JSP
	    model.addAttribute("carListing", car);

	    // 📄 Open JSP (IMPORTANT: path correct rakho)
	    return "Customer/buyNow";   // <-- agar tumhari JSP folder me hai
	}

	@PostMapping("/confirmBooking")
	public String confirmBooking(CarTransactionEntity transaction) {

		carTransactionRepository.save(transaction);

		return "Customer/bookingSuccess";
	}
	
	 @GetMapping("/CareersPage")
	    public String careersPage() {
	        return "Customer/CareersPage"; // JSP name
	    }

	 @GetMapping("/ContactPage")
	    public String contactPage() {
	        return "Customer/ContactPage"; // JSP name
	    }
	 

	 @GetMapping("/CustomerBlog")
	    public String blogPage() {
	        return "Customer/CustomerBlog"; // JSP name
	    }
	 
	 @GetMapping("/about")
		public String aboutPage() {
		    return "Customer/About";
		}
	 @GetMapping("/qualitychecks")
		public String qualityChecks() {
		    return "Customer/QualityChecks";
		}
		
		@GetMapping("/7daystrial")
		public String daystrial() {
			return "Customer/7DaysTrial";
		}
		
		@GetMapping("fixedprice")
		public String fixedprice() {
			return "Customer/FixedPrice";
		}

		@GetMapping("warranty")
		public String warranty() {
			return "Customer/warranty";
		}
}