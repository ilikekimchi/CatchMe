package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Job;

public interface JobService {

	List<Job> list();

	List<Job> jobList(int jobCode);	
	
}
