package com.chainsys.elecricitybillmanagement.controller;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.elecricitybillmanagement.model.CustomerRegistration;
import com.chainsys.elecricitybillmanagement.service.CustomerRegistrationService;

@Controller
@RequestMapping("/customerregistration")
public class CustomerRegistrationController {
	@Autowired
	CustomerRegistrationService customerRegistrationService;

	@GetMapping("/list")
	public String getAllCustomerReg(Model model) {
		List<CustomerRegistration> cuslist = customerRegistrationService.getCustomerRegistration();
		model.addAttribute("allcustomerregistration", cuslist);
		return "list-customer-registration";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		CustomerRegistration thecustomer = new CustomerRegistration();
		model.addAttribute("addcustomerregistration", thecustomer);
		return "add-customer-registration-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomerregistration") CustomerRegistration thecustomer) {
		customerRegistrationService.save(thecustomer);
		return "redirect:/customerregistration/list";

	}
}

