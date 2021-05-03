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

import jj.j2.sh.model.Company;
import jj.j2.sh.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	final String path = "company/";
	
	@Autowired
	CompanyService service;
	
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		
		List<Company> list = service.list(company.getCompanyId());
		
		model.addAttribute("list", list);
		
		return path + "list";
		
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Company item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/{companyId}/update")
	String update(@PathVariable String companyId, Model model) {
		Company item = service.item(companyId);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/{companyId}/update")
	String update(@PathVariable String companyId, Company item, HttpSession session) {		
		item.setCompanyId(companyId);	
		
		service.update(item);
		
		session.setAttribute("company", item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/{companyId}/delete")
	String delete(@PathVariable String companyId) {
		service.delete(companyId);
		
		return "redirect:../list";
	}
}

