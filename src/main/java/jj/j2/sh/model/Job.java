package jj.j2.sh.model;

public class Job {
	private int jobSeq; //직업번호(기본키)
	private int jobCode; //직업 대분류 코드
	private String jobLarge; //직업 대분류
	private String jobSmall; //직업 소분류
	
	
	public int getJobSeq() {
		return jobSeq;
	}
	public void setJobSeq(int jobSeq) {
		this.jobSeq = jobSeq;
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
}
