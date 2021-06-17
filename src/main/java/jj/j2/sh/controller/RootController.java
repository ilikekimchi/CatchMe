package jj.j2.sh.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import jj.j2.sh.model.Customer;
import jj.j2.sh.service.CustomerService;
import jj.j2.sh.model.Chat;
import jj.j2.sh.model.Company;
import jj.j2.sh.service.ChatService;
import jj.j2.sh.service.CompanyService;
import jj.j2.sh.service.PayService;

@Controller
public class RootController {
	
	@Autowired
	CustomerService service;
	
	@Autowired
	CompanyService CompanySevice;
	
	@Autowired
	PayService PayService;
	
	@Autowired
	ChatService chatService;
	
	@RequestMapping("/")
	String home(HttpSession session) {
		
		return "home";
		
	}
	
	/*
	 * @PutMapping("/chatLog") Chat chatLog(@RequestBody Chat item) {
	 * 
	 * chatService.add(item);
	 * 
	 * return item; }
	 */
	
	@RequestMapping("/signup")
	String signup() {
		
		return "/signup";
	}
			
			@GetMapping("/login2")
			String login() {
				 return "redirect:/";
			}
			
			@PostMapping("/login2")
			String login(Customer item, HttpSession session, Model model,
					HttpServletRequest request) {
				//레퍼러로 이전 url 가져와서 여기로 리다이텍트 하게 요청함
				String referer = request.getHeader("Referer");
				
				if(service.login(item)) {
					session.setAttribute("customer", item);
					
					model.addAttribute("loginmsg", item.getCustomerNnm()+"님 환영합니다.");
					model.addAttribute("url", referer);
					
					return "logintry";
				}
				
				model.addAttribute("loginmsg", "아이디나 패스워드를 다시 확인해주세요.");
				
				model.addAttribute("url", referer);
				
				return "logintry";
			}
			
			@GetMapping("/logout")
			String logout(HttpSession session) {
				//세션을 무효화(invalidate) 함
				session.invalidate();
				
				return "redirect:.";
			}
			
			@GetMapping("/login0")
			String login0() {
				return "login0";
			}

			@RequestMapping("/mypage") 
			String mypage() {
				return "mypage/mypage";
			}
			
			@RequestMapping("/userinfo") 
			String userinfo() {
				return "mypage/userinfo";
			}
			
			@PostMapping("/login0")
			String login0(Company item, HttpSession session, Model model,
					HttpServletRequest request) {
				//레퍼러로 이전 url 가져와서 여기로 리다이텍트 하게 요청함
				String referer = request.getHeader("Referer");
				
				if(CompanySevice.login0(item)) {
					session.setAttribute("company", item);
					
					model.addAttribute("loginmsg", item.getCompanyName()+"님 환영합니다.");
					model.addAttribute("url", referer);
					
					int sumCoin = PayService.sum(item.getCompanyId());
					session.setAttribute("sumCoin", sumCoin);
					
					return "logintry";
				}
				
				model.addAttribute("loginmsg", "아이디나 패스워드를 다시 확인해주세요.");
				
				model.addAttribute("url", referer);
				
				return "logintry";
			}
			
	///////////////////임시(pjh)////////////////////////
			@RequestMapping("/pjh")
			String pjh() {
				
				return "pjh";
				
			}
	         
	         @RequestMapping("/resume") 
	         String resume() {
	            return "mypage/resume";
	         }
	         
	         @RequestMapping("/requestUser") 
	         String requestUser() {
	            return "mypage/requestUser";
	         }
	         
	         @RequestMapping("/matchUser") 
	         String matchUser() {
	            return "mypage/matchUser";
	         }
	         
	         @RequestMapping("/talk") 
	         String talk() {
	            return "mypage/talk";
	         }
	         
	         @RequestMapping("/comHome") 
	         String comHome() {
	            return "company/comHome";
	         }
	         
	         @RequestMapping("/comInfo") 
	         String comInfo() {
	            return "company/comInfo";
	         }
	         
	         @RequestMapping("/comReq") 
	         String comReq() {
	            return "company/comReq";
	         }
	         
	         @RequestMapping("/comMatch") 
	         String comMatch() {
	            return "company/comMatch";
	         }
	         
	         @RequestMapping("/comCoin") 
	         String comCoin() {
	            return "company/comCoin";
	         }
	         
	         @GetMapping("/companyNews")
	         public String startCrawl(Model model) throws IOException {
	            
	            SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd", Locale.KOREA); 
	            Date currentTime = new Date();
	            
	            String dTime = formatter.format(currentTime);
	            String e_date = dTime;
	            
	            
	            
//	            currentTime.setDate(currentTime.getDate() - 1);
	            String s_date = formatter.format(currentTime);
	            
	            String query = "기업";
	            String s_from = s_date.replace(".", "");
	            String e_to = e_date.replace(".", "");
	            int page = 1;
	            
	            ArrayList<String> al1 = new ArrayList<String>();
	            ArrayList<String> al2 = new ArrayList<String>();
	            ArrayList<String> al3 = new ArrayList<String>();
	            
	            while (page < 30) {
	               
	               String address = "https://search.naver.com/search.naver?where=news&query=" + query + "&sort=1&ds=" + s_date + 
	                     "&de=" + e_date + "&nso=so%3Ar%2Cp%3Afrom" + s_from + "to" + e_to + "%2Ca%3A&start=" + Integer.toString(page);
	               
	               Document rawData = Jsoup.connect(address).timeout(5000).get();
	               System.out.println(address);
	               
	               Elements group_news = rawData.select("ul li");
	               
	               
	               String realURL = "";
	               String realTITLE = "";
	               String imgSrc = "";

	               
	               for (Element option : group_news) {
	                  
	                  realURL = option.select("a.news_tit").attr("href");
	                  realTITLE = option.select("a.news_tit").attr("title");
	                  imgSrc = option.select("img.api_get").attr("src");

	                  
	                  al1.add(realURL);
	                  al2.add(realTITLE);
	                  al3.add(imgSrc);

	                  
	               }
	               
	               page += 10;
	            }
	            
	            model.addAttribute("urls", al1);
	            model.addAttribute("titles", al2);
	            model.addAttribute("srcs", al3);

	            
	            return "companyNews";
	            
	         }
	         
	         @GetMapping("/customerNews")
	         public String startCrawl2(Model model) throws IOException {
	            
	            SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd", Locale.KOREA); 
	            Date currentTime = new Date();
	            
	            String dTime = formatter.format(currentTime);
	            String e_date = dTime;
	            
	            
	            
//	            currentTime.setDate(currentTime.getDate() - 1);
	            String s_date = formatter.format(currentTime);
	            
	            String query = "이직";
	            String s_from = s_date.replace(".", "");
	            String e_to = e_date.replace(".", "");
	            int page = 1;
	            
	            ArrayList<String> al1 = new ArrayList<String>();
	            ArrayList<String> al2 = new ArrayList<String>();
	            ArrayList<String> al3 = new ArrayList<String>();
	            
	            while (page < 30) {
	               
	               String address = "https://search.naver.com/search.naver?where=news&query=" + query + "&sort=1&ds=" + s_date + 
	                     "&de=" + e_date + "&nso=so%3Ar%2Cp%3Afrom" + s_from + "to" + e_to + "%2Ca%3A&start=" + Integer.toString(page);
	               
	               Document rawData = Jsoup.connect(address).timeout(5000).get();
	               System.out.println(address);
	               
	               Elements group_news = rawData.select("ul li");
	               
	               
	               String realURL = "";
	               String realTITLE = "";
	               String imgSrc = "";

	               
	               for (Element option : group_news) {
	                  
	                  realURL = option.select("a.news_tit").attr("href");
	                  realTITLE = option.select("a.news_tit").attr("title");
	                  imgSrc = option.select("img.api_get").attr("src");

	                  
	                  al1.add(realURL);
	                  al2.add(realTITLE);
	                  al3.add(imgSrc);

	                  
	               }
	               
	               page += 10;
	            }
	            
	            model.addAttribute("urls", al1);
	            model.addAttribute("titles", al2);
	            model.addAttribute("srcs", al3);

	            
	            return "customerNews";
	            
	         }
}
