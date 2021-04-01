package jj.j2.sh.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jj.j2.sh.model.Customer;
import jj.j2.sh.service.CustomerService;

@Controller
public class RootController {
	@Autowired
	CustomerService service;
	
	@RequestMapping("/")
	String home() {
		
		return "home";
		
	}
	
	// @ResponseBody를 하면 뷰리졸버가 jsp를 찾지않고, 후처리를 하지않고 그대로 클라이언트에게 보내주는 지시를 함
			@ResponseBody
			// id가 null 이면 OK, 아니면 FAIL => 중복검사를 했을때 아이디가 없으면 OK, 있으면 FAIL
			@GetMapping("/confirmId")
			String confirmId(String customerId) {
				if(service.item(customerId) == null) {
					return "OK";
				}
					
					return "FAIL";
			}
			
			@GetMapping("/signup")
			String signup() {
				return "signup";
			}
			
			@PostMapping("/signup")
			String signup(Customer item) {
				service.add(item);
				
				return "redirect:.";
			}
			
			@GetMapping("/login2")
			String login() {
				 return "redirect:/";
			}
			
			@PostMapping("/login2")
			String login(Customer item, HttpSession session, Model model,
					HttpServletRequest request) {
				//레퍼러로 이전 url 가져와서 여기로 리다이텍트 하게 요청함
				String referer = request.getHeader("Referer");
				
				if(service.login(item)) {
					session.setAttribute("customer", item);
					
					model.addAttribute("loginmsg", item.getCustomerNnm()+"님 환영합니다.");
					model.addAttribute("url", referer);
					
					return "logintry";
				}
				
				model.addAttribute("loginmsg", "아이디나 패스워드를 다시 확인해주세요.");
				
				model.addAttribute("url", referer);
				
				return "logintry";
			}
			
			@GetMapping("/logout")
			String logout(HttpSession session) {
				//세션을 무효화(invalidate) 함
				session.invalidate();
				
				return "redirect:.";
			}
	
}
