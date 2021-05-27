package jj.j2.sh.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Area;

@Repository
public class AreaDaoImpl implements AreaDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Area area) {
		sql.insert("area.add", area);
	}

	@Override
	public void update(Area area) {
		sql.update("area.update", area);
	}

}
