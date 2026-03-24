package com.grownited.controller.Customer;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class PaymentController {

	//input 
		@GetMapping("/charge")
		public String charge() {
			return "Customer/ChargeCreditCard";
		}
		
		
		@PostMapping("charge")
		public String chargeCreditCard() {
			
			//logic -> payment gateway 
			return "";
		}
}
