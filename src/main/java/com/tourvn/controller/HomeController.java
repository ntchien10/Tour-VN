package com.tourvn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/index")
	public String index() {
		return "redirect:welcome.html";
	}
	
	@RequestMapping("/welcome")
	public String welcome() {
		return "user/welcome";
	}
	
	@RequestMapping("/dashboard")
	public String hello() {
		return "dashboard";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin/index";
	}
}
