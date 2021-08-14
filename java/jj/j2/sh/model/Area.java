package jj.j2.sh.model;

public class Area {
	private int areaSeq; //희망지역번호(기본키)
	private int areaCode; //희망지역 대분류 코드
	private String area1; //희망지역  
	private String area2; //희망지역(시/군/구)  
	
	
	
	public int getAreaSeq() {
		return areaSeq;
	}
	public void setAreaSeq(int areaSeq) {
		this.areaSeq = areaSeq;
	}
	public int getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(int areaCode) {
		this.areaCode = areaCode;
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
