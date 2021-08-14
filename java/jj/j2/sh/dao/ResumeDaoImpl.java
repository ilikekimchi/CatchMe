package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Resume;

@Repository
public class ResumeDaoImpl implements ResumeDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Resume> list(String customerId) {
		return sql.selectList("resume.list", customerId);
	}

	@Override
	public void add(Resume item) {
		sql.insert("resume.add", item);
	}

	@Override
	public Resume item(int resumeSeq) {
		return sql.selectOne("resume.item", resumeSeq);
	}

	@Override
	public void update(Resume item) {
		sql.update("resume.update", item);
	}

	@Override
	public void delete(int resumeSeq) {
		sql.delete("resume.delete", resumeSeq);
	}
	
}
