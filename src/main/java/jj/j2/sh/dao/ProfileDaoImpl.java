package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Profile;
import jj.j2.sh.util.Pager;

@Repository
public class ProfileDaoImpl implements ProfileDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Profile> list(String customerId) {
		return sql.selectList("profile.list", customerId);
	}

	@Override
	public void add(Profile item) {
		sql.insert("profile.add", item);
	}
	
	@Override
	public Profile item(int profileSeq) {
		return sql.selectOne("profile.item", profileSeq);
	}

	@Override
	public void update(Profile item) {
		sql.update("profile.update", item);
	}

	@Override
	public void delete(String customerId) {
		sql.delete("profile.delete", customerId);
	}
	
	/* 서치 부분
	@Override
	public List<Profile> listAll(Pager pager) {
		return sql.selectList("profile.listAll", pager);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("profile.total", pager);
	}
*/
	
	@Override
	public void profileCheck(Profile item) {
		sql.update("profile.profileCheck", item);
	}

	@Override
	public List<Profile> listAll() {
		return sql.selectList("profile.listAll");
	}



}
