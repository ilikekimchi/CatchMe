package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Coin;

public interface CoinService {

	List<Coin> list();

	void add(Coin item);

	Coin item(int coinSeq);

	void update(Coin item);

	void delete(int coinSeq);
	
}
