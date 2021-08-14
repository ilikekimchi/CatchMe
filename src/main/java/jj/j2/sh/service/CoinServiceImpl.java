package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.CoinDao;
import jj.j2.sh.model.Coin;

@Service
public class CoinServiceImpl implements CoinService {

	@Autowired
	CoinDao dao;
	
	@Override
	public List<Coin> list() {
		return dao.list();
	}

	@Override
	public void add(Coin item) {
		dao.add(item);
	}

	@Override
	public Coin item(int coinSeq) {
		return dao.item(coinSeq);
	}

	@Override
	public void update(Coin item) {
		dao.update(item);
	}

	@Override
	public void delete(int coinSeq) {
		dao.delete(coinSeq);
	}

}
