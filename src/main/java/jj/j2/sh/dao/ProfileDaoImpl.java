package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Profile;

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

	@Override
	public List<Profile> listAll() {
		return sql.selectList("profile.listAll");
	}

	@Override
	public void profileCheck(Profile item) {
		sql.update("profile.profileCheck", item);
	}



}
