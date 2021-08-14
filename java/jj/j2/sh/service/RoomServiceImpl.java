package jj.j2.sh.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.RoomDao;
import jj.j2.sh.model.Room;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomDao dao;

	@Override
	public void add(Room item) {
		dao.add(item);
	}

	@Override
	public void delete(int roomId) {
		dao.delete(roomId);
	}
	
	@Override
	public Room item(int roomId) {
		return dao.item(roomId);
	}

	@Override
	public void update(Room item) {
		item.setRoomRole(1);
		
		dao.update(item);
	}

	@Override
	public List<Room> list() {
		
		return dao.list();
	}

}