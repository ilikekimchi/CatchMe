package jj.j2.sh.model;

public class Skill {
	private int profileSeq; //명함코드(외래키)
	private String customerId; //이직자 아이디(외래키)
	private String skillContent; //기술내용

	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
	}
	public String getSkillContent() {
		return skillContent;
	}
	public void setSkillContent(String skillContent) {
		this.skillContent = skillContent;
	}
	
}
