package com.chainsys.elecricitybillmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Index {
@GetMapping("/")
public String index(){
	return "index";
}
}
