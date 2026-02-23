package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SpinnyController {

	@GetMapping ("customer-dashboard")
	public String spinny()
	{
		return "spinny";
	}
}
