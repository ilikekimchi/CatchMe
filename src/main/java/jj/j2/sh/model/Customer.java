package jj.j2.sh.model;

public class Customer {
	private String customerId; //회원 아이디*기본키
	private String customerPw; //회원 비밀번호
	private String customerName; //회원 이름
	private String customerNnm; //회원 닉네임
	private String customerRole; //찜당한기업목록(수락/거절)
	
	
	
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

	
}
