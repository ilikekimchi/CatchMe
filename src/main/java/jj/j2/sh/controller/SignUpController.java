package jj.j2.sh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jj.j2.sh.model.Company;
import jj.j2.sh.model.Customer;
import jj.j2.sh.service.CompanyService;
import jj.j2.sh.service.CustomerService;

@Controller
public class SignUpController {
	
	final String path = "signup/";
	
	@Autowired
	CustomerService service;
	
	@Autowired
	CompanyService CompanyService;
	
	@ResponseBody
	// id가 null 이면 OK, 아니면 FAIL => 중복검사를 했을때 아이디가 없으면 OK, 있으면 FAIL
	@GetMapping("/confirmId")
	String confirmId(String customerId, String companyId) {
		if(service.item(customerId) == null) {
			return "OK";
		}
		
			return "FAIL";
	}
	
	@GetMapping("/customer-sp")
	String signup1() {
		return path + "customer-sp";
	}
	
	@PostMapping("/customer-sp")
	String signup1(Customer item) {
		service.add(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	// id가 null 이면 OK, 아니면 FAIL => 중복검사를 했을때 아이디가 없으면 OK, 있으면 FAIL
	@GetMapping("/confirmId0")
	String confirmId0(String companyId) {
		if(CompanyService.item(companyId) == null) {
			return "OK";
		}
			
			return "FAIL";
	}
	
	@GetMapping("/company-sp")
	String companySp() {
		
		return path + "company-sp";
		
	}
	
	@PostMapping("/company-sp")
	String companySp(Company item) {
		CompanyService.add(item);
		
		return "redirect:.";
	}
	
	
	
}
