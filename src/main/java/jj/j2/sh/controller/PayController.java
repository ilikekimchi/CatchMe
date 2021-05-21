package jj.j2.sh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jj.j2.sh.model.Coin;
import jj.j2.sh.model.Company;
import jj.j2.sh.model.Pay;
import jj.j2.sh.service.CoinService;
import jj.j2.sh.service.PayService;


@Controller
@RequestMapping("/pay")
public class PayController {
	final String path = "pay/";
	final String uploadPath = "//d:/CatchMeUpload/";
	
	@Autowired
	PayService service;
	
	@Autowired
	CoinService serviceCoin;
		
	//Date 형식을 스프링에게 어떤값으로 변환될지 알려줌
	@InitBinder
	private void dataBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		
		binder.registerCustomEditor(Date.class, editor);
	}
		
	//자신 결제내역 보기
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		
		List<Pay> list = service.list(company.getCompanyId());
		
		model.addAttribute("list", list);
	
		return path + "list";
		
	}

	//결제 하기 버튼
	@GetMapping("/order")
	String add(HttpSession session) {
		Company company = (Company) session.getAttribute("company");

		@SuppressWarnings("unchecked")
		Map<Integer, Coin> cart = (Map<Integer, Coin>) session.getAttribute("cart");
		if(cart == null || cart.isEmpty()) {
			return "redirect:list";
		}
		
		service.order(company.getCompanyId(), cart);
		
		session.removeAttribute("cart");
		
		return "redirect:list";
	}
	
	//결제 페이지
	/* 코인 충전 페이지로 오면 선택한 코인정보를  Map 가상인터페이스 에 담음 => HashMap이 실행하여 동작
	인터페이스 와 클래스(Impl)같은 관계
	Map은 inteferface로서 key, value 조합을 사용하는 데이터형의 껍데기
	HashMap은 Hash key 기반의 map을 이미 구현한 클래스 */
	@GetMapping("/cart")
	String cart(@RequestParam(defaultValue = "0") int coinSeq, Model model, HttpSession session) {
		List<Coin> coinList = serviceCoin.list();
		
		model.addAttribute("coinList", coinList);
		
		if(coinSeq != 0) {
			Coin item = serviceCoin.item(coinSeq);
			
			@SuppressWarnings("unchecked")
			Map<Integer, Coin> cart = (Map<Integer, Coin>) session.getAttribute("cart");
			if(cart == null) {
				cart = new HashMap<Integer, Coin>();
				
				session.setAttribute("cart", cart);
			}
			
			//코인 객체(cart) 하나만 선택 가능, 2개이상 선택시 기존에 있던 코인객체(cart)를 비움 
			if(cart.size() > 0) {
				cart.clear();
			}
			
			Coin coin = cart.get(coinSeq);
			if(coin == null) {
				
				cart.put(coinSeq, item);
				
			} else {
				session.removeAttribute("cart");
			}
		}
		
		return path + "cart";
	}
	@GetMapping("/{paySeq}/delete")
	String delete(@PathVariable int paySeq) {
		service.delete(paySeq);
		
		return "redirect:../list";
		
	}
	
	//결제 취소
	@GetMapping("/cartInit")
	String content(HttpSession session) {
				
		session.removeAttribute("cart");
				
		return "redirect:/";
	}
	
}

