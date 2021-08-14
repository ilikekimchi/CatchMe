package jj.j2.sh.model;

import java.util.Date;

public class Customer {
	private String customerId; //이직자 회원 아이디*기본키
	private String customerPw; //이직자 회원 비밀번호
	private String customerName; //이직자 회원 이름
	private String customerNnm; //이직자 회원 닉네임
	private String customerRole; //찜당한기업목록(스크랩)
	private String customerGender; //성별 구분
	private String customerPhone; //이직자 전화번호
	private String customerAddress; //이직자 주소
	private Date customerBirthday; //이직자 생년월일
	
	
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
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
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
	public String getCustomerGender() {
		return customerGender;
	}
	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public Date getCustomerBirthday() {
		return customerBirthday;
	}
	public void setCustomerBirthday(Date customerBirthday) {
		this.customerBirthday = customerBirthday;
	}
	
}
