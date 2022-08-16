package com.chainsys.elecricitybillmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.elecricitybillmanagement.model.Admin;
import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.service.AdminService;
import com.chainsys.elecricitybillmanagement.service.CustomerService;
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@GetMapping("/adminlogin")
    public String adminaccessform(Model model) {
        Admin admin = new Admin();
        model.addAttribute("admin", admin);
        return "admin-login";
	}                 

    @PostMapping("/checkadminlogin")
    public String checkingAccess(@ModelAttribute("admin") Admin use, Model model) {
    	Admin admin = adminService.getAdminNamePassword(use.getAdminName(), use.getPassword());
    	if (admin!= null){
    		model.addAttribute("admin", admin);
    		return "redirect:/index/meterboxindex";
        } else {
        	model.addAttribute("result","Invalid UserName and Password");
        }
            return "admin-login";
    }

}
