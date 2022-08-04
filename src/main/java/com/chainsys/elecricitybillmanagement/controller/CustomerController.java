package com.chainsys.elecricitybillmanagement.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.repository.CustomerRepository;
import com.chainsys.elecricitybillmanagement.repository.MeterboxInformationRepository;
import com.chainsys.elecricitybillmanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService cservice;

	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<Customer> cuslist = cservice.getCustomer();
		model.addAttribute("allcustomer", cuslist);
		return "list-customer";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer thecustomer = new Customer();
		model.addAttribute("addcustomer", thecustomer);
		return "add-customer-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer thecustomer) {
		cservice.save(thecustomer);
		return "redirect:/customer/list";	
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("customerId") int id, Model model) {
		Customer thecustomer = cservice.findById(id);
		model.addAttribute("updatethecustomer", thecustomer);
		return "update-customer-form";
	}

	@PostMapping("/update")
	public String updateCustomer(@ModelAttribute("updatethecustomer") Customer thecustomer) {
		cservice.save(thecustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/deletethecustomer")
	public String deletecustomer(@RequestParam("customerId") int id) {
		cservice.deleteById(id);
		return "redirect:/customer/list";
	}
}
