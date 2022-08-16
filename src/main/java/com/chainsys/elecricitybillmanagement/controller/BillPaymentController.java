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
	@Autowired
	BillDetailsService billDetailService;

	@GetMapping("/list")
	public String getAllBillPayment(Model model) {
		List<BillPayment> billpaymentlist = billPaymentService.getBillPayment();
		model.addAttribute("allbillpayment", billpaymentlist);
		return "list-billpayment";
	}

	@GetMapping("/addform")
	public String showAddForm(@RequestParam("id") String id,Model model) {
		BillPayment thebillpayment = new BillPayment();
		int billId=Integer.parseInt(id);
		BillDetails billDetails=billDetailService.findById(billId);
		thebillpayment.setBillId(billDetails.getBillId());
		thebillpayment.setPaidAmount(billDetails.getBillAmount());
		model.addAttribute("addbillpayment", thebillpayment);
		return "add-billpayment-form";
	}

	@PostMapping("/add")
	public String addNewBillDetails(@ModelAttribute("addbillpayment") BillPayment thebillpayment) {
		billPaymentService.save(thebillpayment);
		return "redirect:/billpayment/list";	
	}
	@GetMapping("/getbillpaymentid")
	public String getbillpaymentid(@RequestParam("id")int id, Model model) {
		BillPayment billPayment = billPaymentService.findById(id);
		model.addAttribute("getbillpayment",billPayment);
		return "get-billpayment-form";
	}
	
	@GetMapping("/getbillidpayment")
    public String getBillIdPayment(@RequestParam("id")int id, Model model) {
        BillPayment thebill = billPaymentService.findById(id);
        model.addAttribute("fetchBillByPayment", thebill);
        model.addAttribute("fetchPaymentByBillDetails",billDetailService.findById(thebill.getBillId()));
        return "find-billid-payment";
    }
}


