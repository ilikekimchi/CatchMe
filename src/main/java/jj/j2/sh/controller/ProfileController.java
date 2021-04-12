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
import org.springframework.web.bind.annotation.RequestParam;

import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;
import jj.j2.sh.service.ProfileService;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	final String path = "profile/";
	
	@Autowired
	ProfileService service;
					
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
			
			List<Profile> list = service.list(customer.getCustomerId());
			
			model.addAttribute("list", list);
			
			return path + "list";
			
		}
		
		@GetMapping("/add")
		String add() {

			return path + "add";
		}
		
		@PostMapping("/add")
		String add(Profile item, @RequestParam String skillContent, HttpSession session) {
			
			Customer customer = (Customer) session.getAttribute("customer");
			
			service.add(customer.getCustomerId(), customer.getCustomerNnm(), skillContent, item);
			
			return "redirect:list";
		}
		
		@GetMapping("/{customerId}/update")
		String update(@PathVariable String customerId, Model model, String skillContent) {
			Profile item = service.item(customerId);
			
			model.addAttribute("item", item);
			
			return path + "update";
		}
		
		@PostMapping("/{customerId}/update")
		String update(@PathVariable String customerId, Profile item, Skill skill,
				HttpSession session) {	
			item.setCustomerId(customerId);	
			
			service.update(skill, item);
			
			session.setAttribute("profile", item);
			
			return "redirect:../list";
		}
		
		@GetMapping("/{profileSeq}/delete")
		String delete(@PathVariable int profileSeq) {
			service.delete(profileSeq);
			
			return "redirect:../list";
		}	
		
		//명함 리스트 모두 보기
		//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
		@GetMapping("/listAll")
		String listAll(Model model) {
			
			List<Profile> listAll = service.listAll();
			
			model.addAttribute("listAll", listAll);
			
			return path + "listAll";
			
		}
		
		//이력서 검증 여부
		@GetMapping("/{profileSeq}/profileCheck")
		String profileCheck(@PathVariable int profileSeq, Model model) {
			Profile item = service.item(profileSeq);
			
			model.addAttribute("item", item);
			
			return path + "profileCheck";
		}
		
		@PostMapping("/{profileSeq}/profileCheck")
		String profileCheck(@PathVariable int profileSeq, Profile item) {
			item.setProfileSeq(profileSeq);
			
			service.profileCheck(item);
			
			return "redirect:../list";
		}
		
	
	}
