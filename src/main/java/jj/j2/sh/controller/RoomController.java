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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jj.j2.sh.model.Chat;
import jj.j2.sh.model.Company;
import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Room;
import jj.j2.sh.service.RoomService;

@RestController
@RequestMapping("/chatRoom")
public class RoomController {
	
	@Autowired
	RoomService service;
	
	//Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
		@InitBinder
		private void dataBinder(WebDataBinder binder) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
			
			binder.registerCustomEditor(Date.class, editor);
		}
		
		
	@GetMapping
	List<Room> list() {
	    
		return service.list();
	}
	
	
		
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	/*
	 * @GetMapping("/list") String list(Model model) { List<Room> list =
	 * service.list();
	 * 
	 * model.addAttribute("list", list);
	 * 
	 * return path + "list";
	 * 
	 * }
	 */
		
		
		/*
		 * @GetMapping("/add") String add() {
		 * 
		 * return path + "add"; }
		 */
		
		@PutMapping
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
					
			service.add(item);
			
			/* session.setAttribute("room", item); */
			
			return item;
		}
		
		//수락 누룰시 1로 변경
		/*
		 * @GetMapping("/{roomId}/update") String update(@PathVariable int roomId, Model
		 * model) { Room item = service.item(roomId);
		 * 
		 * model.addAttribute("item", item);
		 * 
		 * return path + "update"; }
		 * 
		 * @PostMapping("/{roomId}/update") String update(@PathVariable int roomId, Room
		 * item, HttpSession session) { item.setRoomId(roomId);
		 * 
		 * service.update(item);
		 * 
		 * session.setAttribute("room", item);
		 * 
		 * return "redirect:../list"; } //수락 누룰시 1로 변경
		 * 
		 * @GetMapping("/{roomId}/delete") String delete(@PathVariable int roomId) {
		 * service.delete(roomId);
		 * 
		 * return "redirect:../list"; }
		 */
	
}
