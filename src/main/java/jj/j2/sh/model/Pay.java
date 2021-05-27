package jj.j2.sh.model;

import java.util.Date;

public class Pay {
	private int paySeq; //결제 번호(기본키)*자동증가
	private String companyId; //기업아이디(외래키)
	private int coinSeq; //코인 번호(외래키)
	private int paySaleprice; //결제 가격
	private Date payDate; //결제날짜
	
	
	private int coinName; //코인 이름(수량)
	private int coinPay; //코인 가격
	
	public int getPaySeq() {
		return paySeq;
	}
	public void setPaySeq(int paySeq) {
		this.paySeq = paySeq;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public int getCoinSeq() {
		return coinSeq;
	}
	public void setCoinSeq(int coinSeq) {
		this.coinSeq = coinSeq;
	}
	public int getPaySaleprice() {
		return paySaleprice;
	}
	public void setPaySaleprice(int paySaleprice) {
		this.paySaleprice = paySaleprice;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public int getCoinName() {
		return coinName;
	}
	public void setCoinName(int coinName) {
		this.coinName = coinName;
	}
	public int getCoinPay() {
		return coinPay;
	}
	public void setCoinPay(int coinPay) {
		this.coinPay = coinPay;
	}
	
}
