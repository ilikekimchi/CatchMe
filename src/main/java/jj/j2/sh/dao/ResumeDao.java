package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Resume;

public interface ResumeDao {

	List<Resume> list(String customerId);

	void add(Resume item);

	Resume item(int resumeSeq);

	void update(Resume item);

	void delete(int resumeSeq);
	
}
