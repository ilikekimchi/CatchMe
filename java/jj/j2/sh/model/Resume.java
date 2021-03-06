package jj.j2.sh.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class Resume {
	private int resumeSeq; //포트폴리오 코드(기본키)(자동증가)
	private String customerId; //이직자 아이디(외래키)
	private String resumeFile; //포트폴리오 파일
	private Date resumeDate; //최종수정일
	
	MultipartFile uploadFile;
	
	String filename;

	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public int getResumeSeq() {
		return resumeSeq;
	}
	public void setResumeSeq(int resumeSeq) {
		this.resumeSeq = resumeSeq;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getResumeFile() {
		return resumeFile;
	}
	public void setResumeFile(String resumeFile) {
		this.resumeFile = resumeFile;
	}
	public Date getResumeDate() {
		return resumeDate;
	}
	public void setResumeDate(Date resumeDate) {
		this.resumeDate = resumeDate;
	}
	
}
