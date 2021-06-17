package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.ChatDao;
import jj.j2.sh.model.Chat;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDao dao;
	
	@Override
	public void add(Chat item) {
		
		dao.add(item);
		
	}

	@Override
	public Chat item(int roomId) {
		
		return dao.item(roomId);
	}

	@Override
	public List<Chat> list(int roomId) {
		
		return dao.list(roomId);
	}

}
