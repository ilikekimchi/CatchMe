package jj.j2.sh.model;

import java.util.Date;

public class Company {
	private String companyId; //기업 아이디(이메일) 기본키
	private String companyPw; //기업 비밀번호
	private String companyName; //기업명
	private String companyRa; //대표자명
	private int companyScale; //사원수(규모)
	private String companyLocation; //위치(주소)
	private String companyTel; //인사담당자 연락처
	private String companyWriting; //기업개요 및 비전소개
	private int companyPay; //코인(보유 수)
	private String companyRole; //찜한유저목록(스크랩)
	private String companyHomePage; //홈페이지
	private String companyImg; //기업 아이콘
	private Date companyDate; //설립일
	private String companyCategory; //기업형태(중,소 구분)
	private String companyJob; //업종
	
	
	
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyPw() {
		return companyPw;
	}
	public void setCompanyPw(String companyPw) {
		this.companyPw = companyPw;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyRa() {
		return companyRa;
	}
	public void setCompanyRa(String companyRa) {
		this.companyRa = companyRa;
	}
	public int getCompanyScale() {
		return companyScale;
	}
	public void setCompanyScale(int companyScale) {
		this.companyScale = companyScale;
	}
	public String getCompanyLocation() {
		return companyLocation;
	}
	public void setCompanyLocation(String companyLocation) {
		this.companyLocation = companyLocation;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
	public String getCompanyWriting() {
		return companyWriting;
	}
	public void setCompanyWriting(String companyWriting) {
		this.companyWriting = companyWriting;
	}
	public int getCompanyPay() {
		return companyPay;
	}
	public void setCompanyPay(int companyPay) {
		this.companyPay = companyPay;
	}
	public String getCompanyRole() {
		return companyRole;
	}
	public void setCompanyRole(String companyRole) {
		this.companyRole = companyRole;
	}
	public String getCompanyHomePage() {
		return companyHomePage;
	}
	public void setCompanyHomePage(String companyHomePage) {
		this.companyHomePage = companyHomePage;
	}
	public String getCompanyImg() {
		return companyImg;
	}
	public void setCompanyImg(String companyImg) {
		this.companyImg = companyImg;
	}
	public Date getCompanyDate() {
		return companyDate;
	}
	public void setCompanyDate(Date companyDate) {
		this.companyDate = companyDate;
	}
	public String getCompanyCategory() {
		return companyCategory;
	}
	public void setCompanyCategory(String companyCategory) {
		this.companyCategory = companyCategory;
	}
	public String getCompanyJob() {
		return companyJob;
	}
	public void setCompanyJob(String companyJob) {
		this.companyJob = companyJob;
	}
	
	
}