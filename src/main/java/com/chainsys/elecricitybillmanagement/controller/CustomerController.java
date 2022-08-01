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
import com.chainsys.elecricitybillmanagement.repository.MaterboxInformationRepository;
import com.chainsys.elecricitybillmanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService cservice;

	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<Customer> cuslist = cservice.getCustomer();
		model.addAttribute("getallcustomer", cuslist);
		return "list-customer";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer thecustomer = new Customer();
		model.addAttribute("getallcustomer", thecustomer);
		return "add-customer-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("getallcustomer") Customer thecustomer) {
		repo.save(thecustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		Customer thecustomer = repo.findById(id);
		model.addAttribute("updatethecustomer", thecustomer);
		return "update-customer-form";
	}

	@PostMapping("/updatecus")
	public String updateCustomer(@ModelAttribute("updatethecustomer") Customer thecustomer) {
		repo.save(thecustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/deletethecustomer")
	public String deletecustomer(@RequestParam("customerId") int id) {
		repo.deleteById(id);
		return "redirect:/customer/list";
	}
}
