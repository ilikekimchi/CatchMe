package jj.j2.sh.model;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

public class Profile {	
	private int profileSeq; //이력서 번호(기본키)*자동증가
	private String customerId; //이직자 회원 아이디(외래키)
	private int areaSeq; //지역코드(외래키)
	private int jobSeq; //직업코드(외래키)
	private String profileImg; //이력서 프사
	private int profileMoney; //희망연봉
	private int profileState; //상태(0이면 안뜸, 1이면 당장 이직, 2이면 좋은 제안 이직)
	private String profileSchool; //학교명
	private String profileSchoolSkill; //학과/전공 
	private String profileSchoolState; //구분(졸업,재학중,휴학중,졸업예정,중퇴)
	private String profileArmy; //병역구분(필,미필,면제,해당없음)
	private String profileArmyWriting; //면제사유
	private String profileWriting; //한줄소개
	private String profileTime; //연락가능 시간
	private int profileCheck; //검증여부
	private Date profileDate; //최종수정일
	
	
	private int areaCode; //희망지역번호*join
	private String area1; //희망지역*join
	private String area2; //희망지역(시.군.구)*join
	private String careerCompany; //회사명*join
	private String careerDate; //경력*join
	private String careerWork; //담당업무*join
	private String certificateName; //자격증명 *join
	private Date certificateDate; //취득일*join
	private String certificateWriting; //발행처*join
	private String skillContent; //기술/능력*join
	private int jobCode; //기술/능력*join
	private String jobLarge; //직업 대분류*join
	private String jobSmall; //직업 소분류*join

	
	
	//Controller에서 쓰일 customer 정보들 
	private String customerNnm; //이직자 닉네임
	private String customerName; //이직자 회원 이름
	private String customerGender; //성별 구분
	private String customerPhone; //이직자 전화번호
	private String customerAddress; //이직자 주소
	private Date customerBirthday; //이직자 생년월일
	
	MultipartFile uploadFile;

	
	public int getAreaSeq() {
		return areaSeq;
	}

	public void setAreaSeq(int areaSeq) {
		this.areaSeq = areaSeq;
	}

	public int getJobSeq() {
		return jobSeq;
	}

	public void setJobSeq(int jobSeq) {
		this.jobSeq = jobSeq;
	}

	public int getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(int areaCode) {
		this.areaCode = areaCode;
	}
	
	public int getJobCode() {
		return jobCode;
	}

	public void setJobCode(int jobCode) {
		this.jobCode = jobCode;
	}

	public String getJobLarge() {
		return jobLarge;
	}

	public void setJobLarge(String jobLarge) {
		this.jobLarge = jobLarge;
	}

	public String getJobSmall() {
		return jobSmall;
	}

	public void setJobSmall(String jobSmall) {
		this.jobSmall = jobSmall;
	}

	public String getCustomerNnm() {
		return customerNnm;
	}

	public void setCustomerNnm(String customerNnm) {
		this.customerNnm = customerNnm;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
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

	public int getProfileSeq() {
		return profileSeq;
	}

	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
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

	public int getProfileMoney() {
		return profileMoney;
	}

	public void setProfileMoney(int profileMoney) {
		this.profileMoney = profileMoney;
	}

	public int getProfileState() {
		return profileState;
	}

	public void setProfileState(int profileState) {
		this.profileState = profileState;
	}

	public String getProfileSchool() {
		return profileSchool;
	}

	public void setProfileSchool(String profileSchool) {
		this.profileSchool = profileSchool;
	}

	public String getProfileSchoolSkill() {
		return profileSchoolSkill;
	}

	public void setProfileSchoolSkill(String profileSchoolSkill) {
		this.profileSchoolSkill = profileSchoolSkill;
	}

	public String getProfileSchoolState() {
		return profileSchoolState;
	}

	public void setProfileSchoolState(String profileSchoolState) {
		this.profileSchoolState = profileSchoolState;
	}

	public String getProfileArmy() {
		return profileArmy;
	}

	public void setProfileArmy(String profileArmy) {
		this.profileArmy = profileArmy;
	}

	public String getProfileArmyWriting() {
		return profileArmyWriting;
	}

	public void setProfileArmyWriting(String profileArmyWriting) {
		this.profileArmyWriting = profileArmyWriting;
	}

	public String getProfileWriting() {
		return profileWriting;
	}

	public void setProfileWriting(String profileWriting) {
		this.profileWriting = profileWriting;
	}

	public String getProfileTime() {
		return profileTime;
	}

	public void setProfileTime(String profileTime) {
		this.profileTime = profileTime;
	}

	public int getProfileCheck() {
		return profileCheck;
	}

	public void setProfileCheck(int profileCheck) {
		this.profileCheck = profileCheck;
	}

	public Date getProfileDate() {
		return profileDate;
	}

	public void setProfileDate(Date profileDate) {
		this.profileDate = profileDate;
	}

	public String getArea1() {
		return area1;
	}

	public void setArea1(String area1) {
		this.area1 = area1;
	}

	public String getArea2() {
		return area2;
	}

	public void setArea2(String area2) {
		this.area2 = area2;
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
	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	public Date getCertificateDate() {
		return certificateDate;
	}

	public void setCertificateDate(Date certificateDate) {
		this.certificateDate = certificateDate;
	}

	public String getCertificateWriting() {
		return certificateWriting;
	}

	public void setCertificateWriting(String certificateWriting) {
		this.certificateWriting = certificateWriting;
	}

	public String getSkillContent() {
		return skillContent;
	}

	public void setSkillContent(String skillContent) {
		this.skillContent = skillContent;
	}
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}	
	
}
