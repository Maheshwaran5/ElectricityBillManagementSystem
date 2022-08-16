package com.chainsys.elecricitybillmanagement.controller;

import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.elecricitybillmanagement.dto.CustomerBillDetailsDTO;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<Customer> cuslist = customerService.getCustomer();
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
		
		customerService.save(thecustomer);
		return "redirect:/customer/customerlogin";
		
		
	}
	
	@GetMapping("/getcustomerid")
	public String getcustomerid(@RequestParam("id")long id, Model model) {
		Customer customer = customerService.findById(id);
		model.addAttribute("getcustomer",customer);
		return "get-customer-form";
	}
	
	
	

	@GetMapping("/getbilldetails")
	public String getCustomerBillDetails(@RequestParam("id") long id, Model model) {
		CustomerBillDetailsDTO dto = customerService.getCustomerBillDetails(id);
		model.addAttribute("getcustomer", dto.getCustomer());
		model.addAttribute("getbilldetails", dto.getBilldetails());
		return "customer-billdetails";
	}
	
	
    
    @GetMapping("/customerlogin")
    public String adminaccessform(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "customer-login";
	}                 

    @PostMapping("/checkcustomerlogin")
    public String checkingAccess(@ModelAttribute("customer") Customer use) {
    	Customer customer = customerService.getCustomerNamePassword(use.getCustomerName(), use.getPassword());
        if (customer!= null){

            return "redirect:/index/customerindex";
        } else
            return "invalid-user-error";
    }
    
    
    
}

