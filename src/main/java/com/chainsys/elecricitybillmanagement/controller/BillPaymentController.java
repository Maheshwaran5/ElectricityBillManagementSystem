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

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.BillPayment;
import com.chainsys.elecricitybillmanagement.service.BillDetailsService;
import com.chainsys.elecricitybillmanagement.service.BillPaymentService;

@Controller
@RequestMapping("/billpayment")
public class BillPaymentController {
	@Autowired
	BillPaymentService billPaymentService;

	@GetMapping("/list")
	public String getAllBillPayment(Model model) {
		List<BillPayment> billpaymentlist = billPaymentService.getBillPayment();
		model.addAttribute("allbillpayment", billpaymentlist);
		return "list-billpayment";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		BillPayment thebillpayment = new BillPayment();
		model.addAttribute("addbillpayment", thebillpayment);
		return "add-billpayment-form";
	}

	@PostMapping("/add")
	public String addNewBillDetails(@ModelAttribute("addbillpayment") BillPayment thebillpayment) {
		billPaymentService.save(thebillpayment);
		return "redirect:/billpayment/list";	
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("bill_paymentId") int id, Model model) {
		BillPayment thebillPayment = billPaymentService.findById(id);
		model.addAttribute("updatethebillpayment", thebillPayment);
		return "update-billpayment-form";
	}

	@PostMapping("/update")
	public String updateBillPayment(@ModelAttribute("updatethebillpayment") BillPayment thebillpayment) {
		billPaymentService.save(thebillpayment);
		return "redirect:/billpayment/list";
	}

	@GetMapping("/deletethecustomer")
	public String deletebilldetails(@RequestParam("bill_paymentId") int id) {
		billPaymentService.deleteById(id);
		return "redirect:/billpayment/list";
	}
}

