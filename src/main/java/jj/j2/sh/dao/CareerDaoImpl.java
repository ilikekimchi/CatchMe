package jj.j2.sh.dao;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Career;

@Repository
public class CareerDaoImpl implements CareerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Career career) {
		sql.insert("career.add", career);
	}

	@Override
	public void update(Career career) {
		sql.update("career.update", career);
	}

}
