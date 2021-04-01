package jj.j2.sh.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Profile {
	private String customerId; //고객아이디(외래키)
	private String profileImg; //프로필 사진
	private String profileCategory; //프로필 카테고리(직업 등)
	private String profileArea; //희망 근무지
	private String profileAcademic; //학교명
	private String profileAcademicType; //학교구분
	private String profileAcademicStartDate; //입학년월
	private String profileAcademicEndDate; //졸업년월
	private String profileAcademicMajor; //전공명
	private String profileAcademicState; //졸업상태
	private String profileCareer; //경력
	private String profileCareerName; //회사명
	private String profileCareerStartDate; //입사년월
	private String profileCareerEndDate; //퇴사년월
	private String profileCareerPosition; //직급/직책
	private String profileCareerWork; //담당업무
	private String profileAbility; //자격면허
	private String profileAbilityAgency; //자격증 발행처
	private String profileAbilityDate; //자격증 취득월
	private String profileSkill; //기술능력
	private String profileWriting; //한줄소개
	private String profileState; //상태(당장이직, 이직 고려)
	private Date profileDoob; //생년월일
	private Date profileDate; //최종수정일
	private String profileTime; //연락가능 시간
	private int profileScore; //평가점수
	
	private String customerName;
	private String customerNnm;
	
	MultipartFile uploadFile;
	
	
	
	public String getProfileCareerStartDate() {
		return profileCareerStartDate;
	}
	public void setProfileCareerStartDate(String profileCareerStartDate) {
		this.profileCareerStartDate = profileCareerStartDate;
	}
	public String getProfileCareerEndDate() {
		return profileCareerEndDate;
	}
	public void setProfileCareerEndDate(String profileCareerEndDate) {
		this.profileCareerEndDate = profileCareerEndDate;
	}
	public String getProfileAbilityDate() {
		return profileAbilityDate;
	}
	public void setProfileAbilityDate(String profileAbilityDate) {
		this.profileAbilityDate = profileAbilityDate;
	}
	public Date getProfileDoob() {
		return profileDoob;
	}
	public void setProfileDoob(Date profileDoob) {
		this.profileDoob = profileDoob;
	}
	public String getCustomerNnm() {
		return customerNnm;
	}
	public void setCustomerNnm(String customerNnm) {
		this.customerNnm = customerNnm;
	}
	public String getProfileCareerName() {
		return profileCareerName;
	}
	public void setProfileCareerName(String profileCareerName) {
		this.profileCareerName = profileCareerName;
	}
	public String getProfileAcademicType() {
		return profileAcademicType;
	}
	public void setProfileAcademicType(String profileAcademicType) {
		this.profileAcademicType = profileAcademicType;
	}
	public String getProfileAcademicStartDate() {
		return profileAcademicStartDate;
	}
	public void setProfileAcademicStartDate(String profileAcademicStartDate) {
		this.profileAcademicStartDate = profileAcademicStartDate;
	}
	public String getProfileAcademicEndDate() {
		return profileAcademicEndDate;
	}
	public void setProfileAcademicEndDate(String profileAcademicEndDate) {
		this.profileAcademicEndDate = profileAcademicEndDate;
	}
	public String getProfileAcademicMajor() {
		return profileAcademicMajor;
	}
	public void setProfileAcademicMajor(String profileAcademicMajor) {
		this.profileAcademicMajor = profileAcademicMajor;
	}
	public String getProfileAcademicState() {
		return profileAcademicState;
	}
	public void setProfileAcademicState(String profileAcademicState) {
		this.profileAcademicState = profileAcademicState;
	}
	public String getProfileCareerPosition() {
		return profileCareerPosition;
	}
	public void setProfileCareerPosition(String profileCareerPosition) {
		this.profileCareerPosition = profileCareerPosition;
	}
	public String getProfileCareerWork() {
		return profileCareerWork;
	}
	public void setProfileCareerWork(String profileCareerWork) {
		this.profileCareerWork = profileCareerWork;
	}
	public String getProfileAbilityAgency() {
		return profileAbilityAgency;
	}
	public void setProfileAbilityAgency(String profileAbilityAgency) {
		this.profileAbilityAgency = profileAbilityAgency;
	}
	public int getProfileScore() {
		return profileScore;
	}
	public void setProfileScore(int profileScore) {
		this.profileScore = profileScore;
	}
	public String getProfileTime() {
		return profileTime;
	}
	public void setProfileTime(String profileTime) {
		this.profileTime = profileTime;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
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
	public String getProfileAcademic() {
		return profileAcademic;
	}
	public void setProfileAcademic(String profileAcademic) {
		this.profileAcademic = profileAcademic;
	}
	public String getProfileCareer() {
		return profileCareer;
	}
	public void setProfileCareer(String profileCareer) {
		this.profileCareer = profileCareer;
	}
	public String getProfileAbility() {
		return profileAbility;
	}
	public void setProfileAbility(String profileAbility) {
		this.profileAbility = profileAbility;
	}
	public String getProfileSkill() {
		return profileSkill;
	}
	public void setProfileSkill(String profileSkill) {
		this.profileSkill = profileSkill;
	}
	public String getProfileWriting() {
		return profileWriting;
	}
	public void setProfileWriting(String profileWriting) {
		this.profileWriting = profileWriting;
	}
	public String getProfileState() {
		return profileState;
	}
	public void setProfileState(String profileState) {
		this.profileState = profileState;
	}
	public Date getProfileDate() {
		return profileDate;
	}
	public void setProfileDate(Date profileDate) {
		this.profileDate = profileDate;
	}
	
	
}
