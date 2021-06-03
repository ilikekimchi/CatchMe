package jj.j2.sh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jj.j2.sh.dao.PayDao;
import jj.j2.sh.model.Coin;
import jj.j2.sh.model.Pay;

@Service
public class payServiceImpl implements PayService {

	@Autowired
	PayDao dao;
		
	@Override
	public Pay item(String companyId) {
		return dao.item(companyId);
	}

	@Override
	public List<Pay> list(String companyId) {
		return dao.list(companyId);
	}

	@Override
	public void delete(int paySeq) {
		dao.delete(paySeq);
	}

	@Override
	@Transactional
	public void order(String companyId, Map<Integer, Coin> cart) {
		Pay item = new Pay();
		item.setCompanyId(companyId);

		int paySaleprice = 0;
		int payCoin = item.getPayCoin();
		
		for(int coinSeq : cart.keySet()) {
			Coin coin = cart.get(coinSeq);
			
			item.setCoinSeq(coin.getCoinSeq());
			
			paySaleprice = coin.getCoinPay();
			payCoin = coin.getCoinName();
			
		}
		
		item.setPaySaleprice(paySaleprice);
		item.setPayCoin(payCoin);
		
		dao.add(item);
		
	}

	@Override
	public int sum(String companyId) {
		return dao.sum(companyId);
	}

}
