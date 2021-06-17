package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Pay;

@Repository
public class PayDaoImpl implements PayDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Pay item(String companyId) {
		return sql.selectOne("pay.item", companyId);
	}

	@Override
	public List<Pay> list(String companyId) {
		return sql.selectList("pay.list", companyId);
	}

	@Override
	public void add(Pay item) {
		sql.insert("pay.add", item);
	}

	@Override
	public void delete(int paySeq) {
		sql.delete("pay.delete", paySeq);
	}

	@Override
	public int sum(String companyId) {
		return sql.selectOne("pay.sum", companyId);
	}
}