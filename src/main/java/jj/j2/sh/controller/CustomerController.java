package jj.j2.sh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jj.j2.sh.model.Customer;
import jj.j2.sh.service.CustomerService;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	final String path = "customer/";
	
	@Autowired
	CustomerService service;
	
	//Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
	@InitBinder
	private void dataBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		
		binder.registerCustomEditor(Date.class, editor);
	}
	
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		
		List<Customer> list = service.list(customer.getCustomerId());
		
		model.addAttribute("list", list);
	
		return path + "list";
		
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Customer item, HttpSession session) {
		service.add(item);
		
		return "redirect:list";
	}
	
	//내정보 변경
	@GetMapping("/{customerId}/update")
	String update(@PathVariable String customerId, Model model) {
		Customer item = service.item(customerId);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/{customerId}/update")
	String update(@PathVariable String customerId, Customer item, HttpSession session) {	
		item.setCustomerId(customerId);	
		
		service.update(item);
		
		session.setAttribute("customer", item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/{customerId}/delete")
	String delete(@PathVariable String customerId, HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		
		
		if("admin".equals(customer.getCustomerId())){
			service.delete(customerId);
			
			return "redirect:../listAll";
		} else {
			service.delete(customerId);
			
			return "redirect:../list";
		}
		
	}
		
	//명함 리스트 모두 보기
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	@GetMapping("/list-all")
	String listAll(Model model) {
		
		List<Customer> listAll = service.listAll();
		
		model.addAttribute("listAll", listAll);
		
		return path + "list-all";
		
	}
		
	//고객 list 보기
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	@GetMapping("/list-admin")
	String listAdmin(Model model) {
		
		List<Customer> listAdmin = service.listAdmin();
		
		model.addAttribute("listAdmin", listAdmin);
		
		return path + "list-admin";
		
	}
		
}
