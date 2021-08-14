package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Chat;

public interface ChatService {

	void add(Chat item);
	
	Chat item(int roomId);

	List<Chat> list(int roomId);

}
