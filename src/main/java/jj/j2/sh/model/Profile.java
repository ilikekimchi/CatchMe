package jj.j2.sh.model;

import java.util.Date;

public class Profile {
	private int profileSeq; //명함코드(자동증가)(기본키)
	private String customerId; //고객아이디(외래키)
	private String profileGender; //성별
	private Date profileBirthday; //생년월일
	private String profileCategory; //직업분류
	private String profileArea; //희망 근무지
	private String profileMoney; //희망연봉
	private int profileState; //상태(당장이직, 이직 고려, 명함노출X)
	private String profileTime; //연락가능 시간
	private String profileWriting; //한줄소개
	private Date profileDate; //최종수정일
	private int profileCheck; //검증여부(0은 No, 1은 Yes 평소 0)

	
	private String customerNnm; //이직자 별명(Join)
	private String skillContent; //기술내용(Join)
	
	
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
	}
	public Date getProfileBirthday() {
		return profileBirthday;
	}
	public void setProfileBirthday(Date profileBirthday) {
		this.profileBirthday = profileBirthday;
	}
	public String getProfileMoney() {
		return profileMoney;
	}
	public void setProfileMoney(String profileMoney) {
		this.profileMoney = profileMoney;
	}
	public int getProfileCheck() {
		return profileCheck;
	}
	public void setProfileCheck(int profileCheck) {
		this.profileCheck = profileCheck;
	}
	public String getSkillContent() {
		return skillContent;
	}
	public void setSkillContent(String skillContent) {
		this.skillContent = skillContent;
	}
	public int getProfileState() {
		return profileState;
	}
	public void setProfileState(int profileState) {
		this.profileState = profileState;
	}
	public String getProfileGender() {
		return profileGender;
	}
	public void setProfileGender(String profileGender) {
		this.profileGender = profileGender;
	}
	public String getCustomerNnm() {
		return customerNnm;
	}
	public void setCustomerNnm(String customerNnm) {
		this.customerNnm = customerNnm;
	}
	public String getProfileTime() {
		return profileTime;
	}
	public void setProfileTime(String profileTime) {
		this.profileTime = profileTime;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getProfileCategory() {
		return profileCategory;
	}
	public void setProfileCategory(String profileCategory) {
		this.profileCategory = profileCategory;
	}
	public String getProfileArea() {
		return profileArea;
	}
	public void setProfileArea(String profileArea) {
		this.profileArea = profileArea;
	}
	public String getProfileWriting() {
		return profileWriting;
	}
	public void setProfileWriting(String profileWriting) {
		this.profileWriting = profileWriting;
	}
	public Date getProfileDate() {
		return profileDate;
	}
	public void setProfileDate(Date profileDate) {
		this.profileDate = profileDate;
	}
	
	
}
