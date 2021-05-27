package jj.j2.sh.model;

public class Area {
	private int profileSeq; //이력서 번호(외래키)
	private String area1; //희망지역  
	private String area2; //희망지역(시/군/구)  
	
	
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
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

}
