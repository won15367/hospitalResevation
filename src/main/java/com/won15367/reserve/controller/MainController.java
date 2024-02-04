package com.won15367.reserve.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("index")
	public String index() {
		return "index";
	}
	
	@GetMapping("contact")
	public String contact() {
		return "contact";
	}

}
