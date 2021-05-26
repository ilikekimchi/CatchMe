package jj.j2.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	final String path = "board/";
	
	@GetMapping("/list")
	String list() {
		
		return path + "list";
	}
}
