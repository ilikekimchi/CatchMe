package jj.j2.sh.controller;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Resume;
import jj.j2.sh.service.ResumeService;

@Controller
@RequestMapping("/resume")
public class ResumeController {
	final String path = "resume/";
	final String uploadPath = "//d:/CatchMeUpload/";
		
	@Autowired
	ResumeService service;
			
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
			
			List<Resume> list = service.list(customer.getCustomerId());
			
			model.addAttribute("list", list);
			
			return path + "list";
			
		}
		
		@GetMapping("/add")
		String add() {
			return path + "add";
		}
		
		// upload 처리, 사용자가 보내온 form에 있는 값을 아무런 값이 안들어있는 new Resume해서  만들어줌
		//그 객체 하나하나 를 set을 이용해서 넣어주면, MF가 작동하면서 try가 작동하면서 하나하나 값을 넣어줌
		//만약 이직자  아이디(customerId)를 입력하지 않거나 잘못입력(String을 입력해야하는데 숫자(int)를 입력한 경우
		//스프링이 값을 넣지 못하므로 400에러 가 뜸
		//add.jsp에있는 name == uploadFile을 가져옴
		@PostMapping("/add")
		String add(Resume item, HttpSession session, MultipartHttpServletRequest multi) {
			Customer customer = (Customer) session.getAttribute("customer");
			List<MultipartFile> fileList = multi.getFiles("file");
			
				try {
					if(!fileList.isEmpty()) {
						
					//파일 올린수 만큼 반복
					for(int i = 0; i < fileList.size(); i++) {
						
					String random = UUID.randomUUID().toString(); //파일 중복명 처리
						
					String filename = fileList.get(i).getOriginalFilename(); //원래파일명
					
					String saveFileName = random + "_" + filename; //저장되는 파일 이름

					fileList.get(i).transferTo(new File(uploadPath + saveFileName) ); //파일 저장
					 
					item.setResumeFile(saveFileName); //resumeFile에 파일네임 저장
					}
					}
					
					service.add(customer.getCustomerId(), item); //add를 호출하여 item 저장
					
				} catch (IllegalStateException e) {
					
					e.printStackTrace();
					
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				
				return "redirect:list";		
				
			}

		@GetMapping("/{resumeSeq}/update")
		String update(@PathVariable int resumeSeq, Model model) {
			Resume item = service.item(resumeSeq);
			
			model.addAttribute("item", item);
			
			return path + "update";
		}
		
		@PostMapping("/{resumeSeq}/update")
		String update(@PathVariable int resumeSeq, Resume item, HttpSession session, MultipartHttpServletRequest multi) {
			//첨부파일을 첨부했으면 파일을 바꾸고, 첨부하지 않았으면 안바꿈, 고로 기존에 파일이 있던 없던 바꿀생각이 없음
			item.setResumeSeq(resumeSeq);
			List<MultipartFile> fileList = multi.getFiles("file");
				
				try {
					if(!fileList.isEmpty()) 
					{
					//파일 올린수 만큼 반복
					for(int i = 0; i < fileList.size(); i++) {
					//String random = UUID.randomUUID().toString(); //파일 중복명 처리
					
					String filename = fileList.get(i).getOriginalFilename(); //원래파일명
					
					String saveFileName = filename + "_" + (i); //저장되는 파일 이름
					
					fileList.get(i).transferTo(new File(uploadPath + saveFileName) ); //파일 저장
											
					if(item.getResumeFile() != null) {
						File resumeFile = new File(uploadPath + item.getResumeFile()); //resumeFile파일을 읽어옴(CatchMeUpload폴더에있는 파일 이름)
						resumeFile.delete();
					} 
					
					item.setResumeFile(saveFileName);
					}
				}
					
					item.setResumeSeq(resumeSeq);
					
					service.update(item);
					
					session.setAttribute("resume", item);
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				return "redirect:../list";
		}
				
		@GetMapping("/{resumeSeq}/delete")
		String delete(@PathVariable int resumeSeq) {
			service.delete(resumeSeq);
			
			return "redirect:../list";
		}
		
	}
