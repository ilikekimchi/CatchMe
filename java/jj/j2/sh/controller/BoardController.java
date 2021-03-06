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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import jj.j2.sh.model.Area;
import jj.j2.sh.model.Career;
import jj.j2.sh.model.Certificate;
import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Job;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Room;
import jj.j2.sh.model.Skill;
import jj.j2.sh.service.AreaService;
import jj.j2.sh.service.ProfileService;
import jj.j2.sh.service.RoomService;
import jj.j2.sh.util.Pager;

@Controller
@RequestMapping("/board")
public class BoardController {
   final String path = "board/";
   final String uploadPath = "//d:/CatchMeUpload/";
   
   @Autowired
   ProfileService service;
   
   @Autowired
   AreaService areaService;
   
   @Autowired
   RoomService roomService;
   
   //Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
	@InitBinder
	private void dataBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		
		binder.registerCustomEditor(Date.class, editor);
	}
 
    @GetMapping("/list")
    String listAll(Model model, Pager pager) {
		List<Profile> listAll = service.listAll(pager);
    	
		/* List<Profile> listAll = service.listA(); */
    	List<Area> areaList = areaService.list();
       
		model.addAttribute("listAll", listAll);
        model.addAttribute("areaList", areaList);
       
        return path + "list";
       
    }
    
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
   //////페이지네이션 test를 위한 더미 생성
   @GetMapping("/dummy")
   String dummy( Profile item, @ModelAttribute Skill skill, Customer customer, Area area, Career career, Certificate certificate,
         Job job,HttpSession session) {
      customer = (Customer) session.getAttribute("customer");
      
      service.dummy(customer, skill, area, career, certificate, job, item);
      
      return "redirect:list";
   }
   
   @GetMapping("/init")
   String init() {
      service.init();
      return "redirect:list";
   }
   
   @GetMapping("/{profileSeq}/delete")
   String delete(@PathVariable int profileSeq) {
      service.delete2(profileSeq);
      
      return "redirect:../list";
      
      }
   
   @PostMapping("/chatRoom")
   Room add(@RequestBody Room item) {
		/*
		 * Customer customer = (Customer) session.getAttribute("customer"); Company
		 * company = (Company) session.getAttribute("company");
		 * 
		 * item.setCustomerId(customer.getCustomerId());
		 * item.setCustomerNnm(customer.getCustomerNnm());
		 * item.setCustomerGender(customer.getCustomerGender());
		 * 
		 * item.setCompanyId(company.getCompanyId());
		 * item.setCompanyName(company.getCompanyName());
		 * item.setCompanyImg(company.getCompanyImg());
		 */
				
		roomService.add(item);
		
		/* session.setAttribute("room", item); */
		
		return item;
	}  
      
}