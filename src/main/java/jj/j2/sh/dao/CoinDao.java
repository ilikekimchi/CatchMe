package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Coin;

public interface CoinDao {

	List<Coin> list();

	void add(Coin item);

	Coin item(int coinSeq);

	void update(Coin item);

	void delete(int coinSeq);
	
}
