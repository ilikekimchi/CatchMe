package jj.j2.sh.model;

import org.springframework.web.multipart.MultipartFile;

public class Customer {
	private String customerId; //이직자 회원 아이디*기본키
	private String customerPw; //이직자 회원 비밀번호
	private String customerNnm; //이직자 회원 닉네임
	private String customerRole; //찜당한기업목록(스크랩)
	private String customerResume; //이력서파일 업로드
	
	
	MultipartFile uploadFile;
	
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerPw() {
		return customerPw;
	}
	public void setCustomerPw(String customerPw) {
		this.customerPw = customerPw;
	}
	public String getCustomerNnm() {
		return customerNnm;
	}
	public void setCustomerNnm(String customerNnm) {
		this.customerNnm = customerNnm;
	}
	public String getCustomerRole() {
		return customerRole;
	}
	public void setCustomerRole(String customerRole) {
		this.customerRole = customerRole;
	}
	public String getCustomerResume() {
		return customerResume;
	}
	public void setCustomerResume(String customerResume) {
		this.customerResume = customerResume;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
}
