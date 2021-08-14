package jj.j2.sh.model;

public class Coin {
	private int coinSeq; //코인 번호(기본키)*자동증가
	private int coinName; //코인 이름(수)
	private int coinPay; //코인 가격
	
	
	public int getCoinSeq() {
		return coinSeq;
	}
	public void setCoinSeq(int coinSeq) {
		this.coinSeq = coinSeq;
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
