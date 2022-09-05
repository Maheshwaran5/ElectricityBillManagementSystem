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
	public String getAllBillPayment(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		long meterId = (long)session.getAttribute("meterId");
		List<BillPayment> billpaymentlist = billPaymentService.getBillPaymentByMeterId(meterId);
		model.addAttribute("allbillpayment", billpaymentlist);
		return "list-billpayment";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model,HttpServletRequest request) {
		BillPayment thebillpayment = new BillPayment();
		HttpSession session = request.getSession();
		long meterId = (long)session.getAttribute("meterId");
		thebillpayment.setMeterId(meterId);
		model.addAttribute("addbillpayment", thebillpayment);
		return "add-billpayment-form";
	}

	@PostMapping("/add")
	public String addNewBillDetails(@ModelAttribute("addbillpayment") BillPayment thebillpayment) {
		billPaymentService.save(thebillpayment);
		return "redirect:/billpayment/list";	
	}
	
	@GetMapping("/addpaymentform")
	public String showAddFoorm(@RequestParam("id")int id,@RequestParam("mid")long mid,Model model,HttpServletRequest request) {
		BillPayment thebillpayment = new BillPayment();
		HttpSession session = request.getSession();
		long meterId = (long)session.getAttribute("meterId");
		thebillpayment.setMeterId(meterId);
		int billId =(int) session.getAttribute("billId");
		thebillpayment.setBillId(billId);
//		 BillPayment thebill = billPaymentService.fetchBybillIdAndmeterId(id,mid);
//		 System.out.println(thebill);
		model.addAttribute("addbillpayment", thebillpayment);
		return "add-billpayment-form";
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


