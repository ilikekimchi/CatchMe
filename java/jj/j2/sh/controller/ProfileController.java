package jj.j2.sh.controller;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jj.j2.sh.model.Area;
import jj.j2.sh.model.Career;
import jj.j2.sh.model.Certificate;
import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Job;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;
import jj.j2.sh.service.ProfileService;


@Controller
@RequestMapping("/profile")
public class ProfileController {
	final String path = "profile/";
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
	
	@GetMapping("/mypage") 
	   String mypage(Model model, HttpSession session) {
	      
	      Customer customer = (Customer) session.getAttribute("customer");
	      
	      List<Profile> list = service.list(customer.getCustomerId());
	      
	      model.addAttribute("list", list);
	      
	      return path + "mypage";
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
	
	/* upload 처리, 사용자가 보내온 form에 있는 값을 아무런 값이 안들어있는 new Profile해서  만들어줌
	그 객체 하나하나 를 set을 이용해서 넣어주면, MF가 작동하면서 try가 작동하면서 하나하나 값을 넣어줌
	만약 이력서번호(ProfileSeq)를 입력하지 않거나 잘못입력(String을 입력해야하는데 숫자(int)를 입력한 경우
	스프링이 값을 넣지 못하므로 400에러 가 뜸
	add.jsp에있는 name == uploadFile을 가져옴 */
	@PostMapping("/add")
	String add(Profile item, @RequestParam String skillContent, @RequestParam int areaCode,
			@RequestParam String area1,@RequestParam String area2, 
			@RequestParam String careerCompany, @RequestParam String careerDate, 
			@RequestParam String careerWork, 
			@RequestParam String certificateName, @RequestParam Date certificateDate, 
			@RequestParam String certificateWriting,
			Job job, Area area,
			HttpSession session) {
		
			/* profile/list에서 세션으로 가져왔으므로, session으로 형변환을 시켜서 내가 갖고오고싶은 것들(customerId와 customerName 등)에 
		 	세션에서 get해서(가져와서) item에 넣어줌 , service.add(item) 에서 형변환시킨 customerId와 customerName 등 같이 item으로 들어감
			*/
			Customer customer = (Customer) session.getAttribute("customer");
					
		MultipartFile file = item.getUploadFile();
		
		try {
			if(!file.isEmpty()) {
				
			String filename = file.getOriginalFilename();
				
			file.transferTo(new File(uploadPath + filename) ); //파일 복사
			
			item.setProfileImg(filename); //profileImg에 파일네임 저장
			}
			
			item.setCustomerId(customer.getCustomerId());
			
		service.add(customer.getCustomerId(), customer.getCustomerName(), customer.getCustomerAddress(),
				customer.getCustomerGender(),customer.getCustomerPhone(), customer.getCustomerBirthday(),
				skillContent, careerCompany, careerDate, careerWork, 
				certificateName, certificateDate, certificateWriting, 
				job, area, item);
		
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		return "redirect:list";
	}
		
	//이력서 변경 및 등록
	@GetMapping("/{profileSeq}/update")
	String update(@PathVariable int profileSeq, Model model) {
		Profile item = service.item(profileSeq);
				
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	/*spring MVC 에서는 model을 만들어주면 굳이 @RequestParam를 이용해서 값을 세팅해줄 필요가 없음,
	 spring MVC가 model에서 알아서 getter, setter를 해서 값을 찾아줌*/
	@PostMapping("/{profileSeq}/update")
	String update(@PathVariable int profileSeq, Profile item, 
			@ModelAttribute Skill skill, Area area, Career career, Certificate certificate,
			Job job, HttpSession session) {
			
		MultipartFile file = item.getUploadFile(); //MultipartFile을 item으로 읽어옴
		
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
				
				
			file.transferTo(new File(uploadPath + filename));
			
			if(item.getProfileImg() != null) {
				File profileImg = new File(uploadPath + item.getProfileImg()); //customerImg파일을 읽어옴(CatchMeUpload폴더에있는 파일 이름)
				profileImg.delete();
			}
			
			item.setProfileImg(filename);
		}
			
		item.setProfileSeq(profileSeq);
		
		service.update(skill, area, career, certificate, job, item);
				
		
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:../list";
	}
	
	@GetMapping("/{customerId}/delete")
	String delete(@PathVariable String customerId, HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		
		
		if("admin".equals(customer.getCustomerId())){
			service.delete(customerId);
			
			return "redirect:/board/list";
		} else {
			service.delete(customerId);
			
			return "redirect:../list";
		}
		
	}
	
	@Inject
	JavaMailSender mailSender;

	@PostMapping("sendMail")
	public void sendMail(String id, HttpSession session) {

		int result = (int) (Math.random() * 899999 + 100000);
		String authNo = Integer.toString(result);

		try {
			MimeMessage msg = mailSender.createMimeMessage();
			// 이메일 객체

			msg.addRecipient(RecipientType.TO, new InternetAddress(id));
			// 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)

			msg.addFrom(new InternetAddress[] { new InternetAddress("gimseonghyun5052@gmail.com", "CATCHME") });
			// 이메일 발신자

			msg.setSubject("[CATCHME]에서 발송한 인증번호입니다.", "utf-8");
			// 이메일 제목

			msg.setText("[" + authNo + "]", "utf-8");
			// 이메일 본문

			mailSender.send(msg);
			// 이메일 보내기

			session.setAttribute("authNo", authNo);
			session.setAttribute("id", id);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@PostMapping("confirm")
	String confirm(String authNo2, HttpSession session) {
		String authNo1 = (String) session.getAttribute("authNo");

		if(authNo1 != authNo2) {
			return "FAIL";
		}
		return "SUCCESS";
	}

	@PostMapping("/{pwd}/reset_pw")
	String reset_pw(String pwd, HttpSession session) {
		String id = session.getId();
		service.rsPw(id, pwd);

		return "home";
	}
	
}

