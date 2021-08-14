package jj.j2.sh.model;

public class Room {
	private int roomId;
	private String customerId;
	private String companyId;
	private int roomRole;
	
	private String companyName;
	private String companyImg;
	private String customerNnm;
	private String customerGender;
	
	
	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCustomerNnm() {
		return customerNnm;
	}

	public void setCustomerNnm(String customerNnm) {
		this.customerNnm = customerNnm;
	}

	public int getRoomRole() {
		return roomRole;
	}

	public void setRoomRole(int roomRole) {
		this.roomRole = roomRole;
	}

	public String getCompanyImg() {
		return companyImg;
	}

	public void setCompanyImg(String companyImg) {
		this.companyImg = companyImg;
	}

	public String getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}
}
