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

import jj.j2.sh.model.Coin;
import jj.j2.sh.service.CoinService;
import jj.j2.sh.service.PayService;

@Controller
@RequestMapping("/coin")
public class CoinController {
	final String path = "coin/";
	
	@Autowired
	CoinService service;
	
	@Autowired
	PayService servicePay;
				
	//Model에 list를 담아두면 jsp페이지에 전달할 수 있다.
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		List<Coin> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
		
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Coin item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/{coinSeq}/update")
	String update(@PathVariable int coinSeq, Model model) {
		Coin item = service.item(coinSeq);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/{coinSeq}/update")
	String update(@PathVariable int coinSeq, Coin item, HttpSession session) {		
		item.setCoinSeq(coinSeq);	
		
		service.update(item);
		
		session.setAttribute("coin", item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/{coinSeq}/delete")
	String delete(@PathVariable int coinSeq) {
		service.delete(coinSeq);
		
		return "redirect:../list";
	}
}

