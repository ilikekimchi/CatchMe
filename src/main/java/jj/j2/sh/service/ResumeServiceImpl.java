package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jj.j2.sh.dao.ResumeDao;
import jj.j2.sh.model.Resume;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	ResumeDao dao;
	
	@Override
	public List<Resume> list(String customerId) {
		return dao.list(customerId);
	}

	@Override
	@Transactional
	public void add(int profileSeq, Resume item) {
		item.setProfileSeq(profileSeq);
		
		dao.add(item);
	}

	@Override
	public Resume item(int resumeSeq) {
		return dao.item(resumeSeq);
	}

	@Override
	public void update(Resume item) {
		dao.update(item);
	}

	@Override
	public void delete(int resumeSeq) {
		dao.delete(resumeSeq);
	}

}
