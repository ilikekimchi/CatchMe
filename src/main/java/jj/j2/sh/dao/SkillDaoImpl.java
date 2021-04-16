package jj.j2.sh.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Skill;

@Repository
public class SkillDaoImpl implements SkillDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Skill skill) {
		sql.insert("skill.add", skill);
	
	}

	@Override
	public void update(Skill skill) {
		sql.update("skill.update", skill);
	}

}
