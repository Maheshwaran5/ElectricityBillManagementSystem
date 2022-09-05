package com.chainsys.elecricitybillmanagement.controller;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService customerService;
	private static final String ADDFORM="add-customer-form"; 
	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<Customer> cuslist = customerService.getCustomer();
		model.addAttribute("allcustomer", cuslist);
		return "list-customer";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model,HttpServletRequest request) {
		Customer thecustomer = new Customer();
		model.addAttribute("addcustomer", thecustomer);
		return ADDFORM;
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer thecustomer,Model model) {
		try {
			customerService.save(thecustomer);
			model.addAttribute("result","Customer Added Successfully");
			return ADDFORM;
		}
		catch(Exception er) {
			model.addAttribute("error","Already Exists");
			return ADDFORM;
		}
	}

	@GetMapping("/getcustomerid")
	public String getcustomerid(@RequestParam("id") long id, Model model) {
		Customer customer = customerService.findById(id);
		model.addAttribute("getcustomer", customer);
		return "get-customer-form";
	}

	@GetMapping("/customerlogin")
	public String adminaccessform(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "customer-login";
	}

	@PostMapping("/checkcustomerlogin")
	public String checkingAccess(@ModelAttribute("customer") Customer use,HttpSession session,BillDetails billDetails) {
		Customer customer = customerService.getCustomerNamePassword(use.getCustomerName(), use.getPassword());
		if (customer != null) {
			session.setAttribute("meterId", customer.getMeterId());
			return "redirect:/index/customerindex";
		} else
			return "invalid-user-error";
	}

}
