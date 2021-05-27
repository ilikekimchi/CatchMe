package jj.j2.sh.model;

public class Career {
	private int careerSeq; //경력번호(기본키)*자동증가
	private int profileSeq; //이력서 번호(외래키)
	private String careerCompany; //회사명
	private String careerDate; //경력
	private String careerWork; //담당업무
	private String careerCategory; //직급/직책 분류
	
	
	
	public int getCareerSeq() {
		return careerSeq;
	}
	public void setCareerSeq(int careerSeq) {
		this.careerSeq = careerSeq;
	}
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
	}
	public String getCareerCompany() {
		return careerCompany;
	}
	public void setCareerCompany(String careerCompany) {
		this.careerCompany = careerCompany;
	}
	public String getCareerDate() {
		return careerDate;
	}
	public void setCareerDate(String careerDate) {
		this.careerDate = careerDate;
	}
	public String getCareerWork() {
		return careerWork;
	}
	public void setCareerWork(String careerWork) {
		this.careerWork = careerWork;
	}
	public String getCareerCategory() {
		return careerCategory;
	}
	public void setCareerCategory(String careerCategory) {
		this.careerCategory = careerCategory;
	}
}
