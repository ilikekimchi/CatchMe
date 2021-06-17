package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Chat;

public interface ChatDao {

	void add(Chat item);

	Chat item(int roomId);

	List<Chat> list(int roomId);

}
