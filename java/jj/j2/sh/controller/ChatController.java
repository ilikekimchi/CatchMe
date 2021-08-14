package jj.j2.sh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jj.j2.sh.model.Area;
import jj.j2.sh.model.Chat;
import jj.j2.sh.service.ChatService;

@RestController
@RequestMapping("/chatLog")
public class ChatController {

	@Autowired
	ChatService service;
	
	//Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
	@InitBinder
	private void dataBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
				
		binder.registerCustomEditor(Date.class, editor);
	}
	
	@PostMapping
	List<Chat> list(@RequestBody int roomId) {
		
		return service.list(roomId);
	}
	
	@PutMapping
	 Chat chatLog(@RequestBody Chat item) {
		 
		 service.add(item);
		 
		 return item;
	 }
}
