package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Job;

public interface JobDao {

	void update(Job job);

	List<Job> list();

	List<Job> jobList(int jobCode);

	void add(Job job);
	
}
