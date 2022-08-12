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

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.service.BillDetailsService;

@Controller
@RequestMapping("/billdetails")
public class BillDetailsController {
	@Autowired
	BillDetailsService billDetailsService;

	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<BillDetails> billlist = billDetailsService.getBillDetails();
		model.addAttribute("allbilldetails", billlist);
		return "list-billdetails";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		BillDetails thebilldetails = new BillDetails();
		model.addAttribute("addbilldetails", thebilldetails);
		return "add-billdetails-form";
	}

	@PostMapping("/add")
	public String addNewBillDetails(@ModelAttribute("addbilldetails") BillDetails thebilldetails) {
	billDetailsService.save(thebilldetails);
		return "redirect:/billdetails/list";	
	}

	
@GetMapping("/getbilldetailsid")
	public String getbilldetailsid(@RequestParam("id")long id, Model model) {
	BillDetails billDetails = billDetailsService.findById(id);
		model.addAttribute("getbilldetails",billDetails);
		return "get-billdetails-form";
	
	}
}


