package jj.j2.sh.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import jj.j2.sh.model.Room;

@Repository
public class RoomDaoImpl implements RoomDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Room> list() {
		return sql.selectList("room.list");
	}

	@Override
	public void add(Room item) {
		sql.insert("room.add", item);
	}

	@Override
	public void delete(int roomId) {
		sql.delete("room.delete", roomId);
	}

	@Override
	public Room item(int roomId) {
		return sql.selectOne("room.item", roomId);
	}

	@Override
	public void update(Room item) {
		sql.update("room.update", item);
	}

}