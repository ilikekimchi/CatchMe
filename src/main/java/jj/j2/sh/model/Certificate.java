package jj.j2.sh.model;

import java.util.Date;

public class Certificate {
	private int certificateSeq; //자격증 번호(기본키)*자동증가
	private int profileSeq; //이력서 번호(외래키)
	private String certificateName; //자격증명 
	private Date certificateDate; //취득일
	private String certificateWriting; //발행처 
	
	
	public int getCertificateSeq() {
		return certificateSeq;
	}
	public void setCertificateSeq(int certificateSeq) {
		this.certificateSeq = certificateSeq;
	}
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
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

}
