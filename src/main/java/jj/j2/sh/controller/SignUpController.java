package jj.j2.sh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jj.j2.sh.model.Company;
import jj.j2.sh.model.Customer;
import jj.j2.sh.service.CompanyService;
import jj.j2.sh.service.CustomerService;

@Controller
@RequestMapping("/signup")
public class SignUpController {
	
	final String path = "signup/";
	final String uploadPath = "//d:/CatchMeUpload/";
	
	@Autowired
	CustomerService service;
	
	@Autowired
	CompanyService CompanyService;
	
	//Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
		@InitBinder
		private void dataBinder(WebDataBinder binder) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
			
			binder.registerCustomEditor(Date.class, editor);
		}
	
	@ResponseBody
	// id가 null 이면 OK, 아니면 FAIL => 중복검사를 했을때 아이디가 없으면 OK, 있으면 FAIL
	@GetMapping("/confirmId")
	String confirmId(String customerId) {
		if(service.item(customerId) == null) {
			return "OK";
		}
		
			return "FAIL";
	}
	
	@GetMapping("/customer-sp")
	String customerSp() {
		return path + "customer-sp";
	}
	
	@PostMapping("/customer-sp")
	String customerSp(Customer item, HttpSession session) {
		service.add(item);
		
		return "redirect:.";
		
	}
	
	//기업 회원가입 관련 --------------------------------------------------------
	
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
