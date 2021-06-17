package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Job;

@Repository
public class JobDaoImpl implements JobDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void update(Job job) {
		sql.update("job.update", job);
	}

	@Override
	public List<Job> list() {
		return sql.selectList("job.list");
	}

	@Override
	public List<Job> jobList(int jobCode) {
		return sql.selectList("job.smallList", jobCode);
	}

	@Override
	public void add(Job job) {
		sql.insert("job.add", job);
	}

}
