package jj.j2.sh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {
	
	@RequestMapping("/")
<<<<<<< HEAD
	String home() {
		
		return "home";
		
	}
=======
	String main() {
		
		return "index";
	}
	
	
	
	
>>>>>>> bc292c8b702090da38e1b23b75173e371f83b88a
	
}
