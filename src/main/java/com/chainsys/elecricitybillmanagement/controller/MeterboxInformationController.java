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

import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;
import com.chainsys.elecricitybillmanagement.repository.MaterboxInformationRepository;

@Controller
@RequestMapping("/meterbox")
public class MeterboxInformationController {
	@Autowired
	private MaterboxInformationRepository repo;

	@GetMapping("/list")
	public String getAllMeterboxInformation(Model model) {
		List<MeterboxInformation> mbilist = repo.findAll();
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
		repo.save(themeterbox);
		return "redirect:/meterbox/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		MeterboxInformation themeterbox = repo.findById(id);
		model.addAttribute("updatethemeterbox", themeterbox);
		return "update-meterbox-form";
	}

	@PostMapping("/updatembi")
	public String updateMeterboxInformation(@ModelAttribute("updatethemeterbox") MeterboxInformation themeterbox) {
		repo.save(themeterbox);
		return "redirect:/meterbox/list";
	}

	@GetMapping("/deletethemeterbox")
	public String deleteMeterboxInformation(@RequestParam("meterId") int id) {
		repo.deleteById(id);
		return "redirect:/meterbox/list";
	}
}
