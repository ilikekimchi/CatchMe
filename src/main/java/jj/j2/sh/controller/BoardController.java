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

import jj.j2.sh.model.Profile;
import jj.j2.sh.service.ProfileService;
import jj.j2.sh.util.Pager;

@Controller
@RequestMapping("/board")
public class BoardController {
   final String path = "board/";
   final String uploadPath = "//d:/CatchMeUpload/";
   
   @Autowired
	ProfileService service;
   
 //Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
 	@InitBinder
 	private void dataBinder(WebDataBinder binder) {
 		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
 		
 		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
 		
 		binder.registerCustomEditor(Date.class, editor);
 	}
 	
    //명함 리스트 모두 보기
 	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
 	@GetMapping("/list")
 	String listAll(Model model) {
 		
 		List<Profile> listAll = service.listAll();
 		
 		model.addAttribute("listAll", listAll);
 		
 		return path + "list";
 		
 	}
 	/* 서치기능 오류..
 	@GetMapping("/list")
 	String listAll(Model model, Pager pager) {
 		
 		List<Profile> listAll = service.listAll(pager);
 		
 		model.addAttribute("listAll", listAll);
 		
 		return path + "list";
 		
 	}*/
 	
 	//이력서 검증 여부	
 	@GetMapping("/{profileSeq}/profileCheck")
 	String update(@PathVariable int profileSeq, Model model) {
 		Profile item = service.item(profileSeq);
 					
 		model.addAttribute("item", item);
 			
 		return path + "profileCheck";
 	}

 	//이력서 검증 여부	
	@PostMapping("/{profileSeq}/profileCheck")
	String profileCheck(@PathVariable int profileSeq, Profile item, HttpSession session) {
		item.setProfileSeq(profileSeq);
		
		service.profileCheck(item);
		
		session.setAttribute("profile", item);
		
		return "redirect:../list";
		
	}	
}
