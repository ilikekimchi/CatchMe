package jj.j2.sh.service;

import java.util.List;
import jj.j2.sh.model.Room;

public interface RoomService {
	
	void add(Room item);

	void delete(int roomId);
	
	Room item(int roomId);

	void update(Room item);

	List<Room> list();

}