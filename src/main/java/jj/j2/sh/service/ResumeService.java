package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Resume;

public interface ResumeService {

	List<Resume> list(String customerId);

	void add(int profileSeq, Resume item);

	Resume item(int resumeSeq);

	void update(Resume item);

	void delete(int resumeSeq);
	
}
