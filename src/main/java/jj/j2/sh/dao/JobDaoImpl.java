package jj.j2.sh.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Job;

@Repository
public class JobDaoImpl implements JobDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Job job) {
		sql.insert("job.add", job);
	}

	@Override
	public void update(Job job) {
		sql.update("job.update", job);
	}

}
