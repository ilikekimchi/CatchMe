package jj.j2.sh.dao;

import java.util.List;

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

	@Override
	public List<Area> list() {
		return sql.selectList("area.list");
	}

	@Override
	public List<Area> area2List(int areaCode) {
		
		return sql.selectList("area.area2List", areaCode);
	}

}