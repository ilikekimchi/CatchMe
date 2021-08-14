package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Coin;

@Repository
public class CoinDaoImpl implements CoinDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Coin> list() {
		return sql.selectList("coin.list");
	}

	@Override
	public void add(Coin item) {
		sql.insert("coin.add", item);
	}

	@Override
	public Coin item(int coinSeq) {
		return sql.selectOne("coin.item", coinSeq);
	}

	@Override
	public void update(Coin item) {
		sql.update("coin.update", item);
	}

	@Override
	public void delete(int coinSeq) {
		sql.delete("coin.delete", coinSeq);
	}

}
