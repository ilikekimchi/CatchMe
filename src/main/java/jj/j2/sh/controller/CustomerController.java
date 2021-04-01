package jj.j2.sh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	String add(Customer item) {
		service.add(item);
		
		return "redirect:list";
	}
	
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
	String delete(@PathVariable String customerId) {
		service.delete(customerId);
		
		return "redirect:../list";
	}
}

