package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.JobDao;
import jj.j2.sh.model.Job;

@Service
public class JobServiceImpl implements JobService {

	@Autowired
	JobDao dao;
	
	@Override
	public List<Job> list() {
		return dao.list();
	}

	@Override
	public List<Job> jobList(int jobCode) {
		return dao.jobList(jobCode);
	}

}
