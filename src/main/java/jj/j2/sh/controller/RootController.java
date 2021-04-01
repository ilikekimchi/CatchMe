package jj.j2.sh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {
	
	@RequestMapping("/")
	String main() {
		
		return "index";
	}
	
	
	
	
	
}
