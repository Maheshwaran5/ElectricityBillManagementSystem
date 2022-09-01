package com.chainsys.elecricitybillmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.service.BillDetailsService;

@Controller   
@RequestMapping("/index")     
public class Index {
	@Autowired
	BillDetailsService billDetailsService;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/meterboxindex")
	public String meterboxIndex() {
		return "meterbox-index";
	}

	@GetMapping("/customerindex")
	public String customerIndex(Model model) {
		List<BillDetails> billlist = billDetailsService.getBillDetails();
		model.addAttribute("allbilldetails", billlist);
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
