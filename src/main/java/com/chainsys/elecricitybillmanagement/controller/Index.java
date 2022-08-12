package com.chainsys.elecricitybillmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller   
@RequestMapping("/index")     
public class Index {
	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/meterboxindex")
	public String meterboxIndex() {
		return "meterbox-index";
	}

	@GetMapping("/customerindex")
	public String customerIndex() {
		return "customer-index";

	}

	@GetMapping("/billdetailsindex")
	public String billdetailsIndex() {
		return "bill-details-index";
	}

	@GetMapping("/billpaymentindex")
	public String billpaymentIndex() {
		return "bill-payment-index";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home";
}
}
