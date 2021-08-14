package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Room;

public interface RoomDao {

	List<Room> list();

	void add(Room item);

	void delete(int roomId);

	Room item(int roomId);

	void update(Room item);
	
}