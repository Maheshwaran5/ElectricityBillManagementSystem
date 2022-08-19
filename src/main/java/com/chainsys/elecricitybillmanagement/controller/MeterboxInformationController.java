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

import com.chainsys.elecricitybillmanagement.dto.MeterboxInformationCustomerDTO;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.service.MeterboxInformationService;

@Controller
@RequestMapping("/meterbox")
public class MeterboxInformationController {
	@Autowired
	private MeterboxInformationService meterboxInformationService;

	@GetMapping("/list")
	public String getAllMeterboxInformation(Model model) {
		List<MeterboxInformation> mbilist = meterboxInformationService.getMeterboxInformation();
		model.addAttribute("allmeterbox", mbilist);
		return "list-meterbox";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		MeterboxInformation themeterbox = new MeterboxInformation();
		model.addAttribute("addmeterbox", themeterbox);
		return "add-meterbox-form";
	}

	@PostMapping("/add")
	public String addNewMeterboxInformation(@ModelAttribute("addmeterbox") MeterboxInformation themeterbox) {
		meterboxInformationService.save(themeterbox);
		return "redirect:/meterbox/list";
	}

	@GetMapping("/getmeterid")
	public String getmeterid(@RequestParam("id") long id, Model model) {
		MeterboxInformation meter = meterboxInformationService.findById(id);
		model.addAttribute("getmeter", meter);
		return "get-meterbox-form";
	}

	@GetMapping("/getcustomer")
	public String getMeterboxInformationCustomer(@RequestParam("meterId") long id, Model model) {
		System.out.println("id " + id);
		MeterboxInformationCustomerDTO dto = meterboxInformationService.getmeterboxInformationCustomerDTO(id);
		model.addAttribute("getmeterboxinformation", dto.getMeterboxInfo());
		model.addAttribute("getcustomer", dto.getCustomer());
		return "meterboxinformation-customer";
	}
}
