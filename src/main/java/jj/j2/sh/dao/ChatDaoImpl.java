package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Chat;

@Repository
public class ChatDaoImpl implements ChatDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Chat item) {
		
		sql.insert("chat.add", item);
		
	}

	@Override
	public Chat item(int roomId) {
		
		return sql.selectOne("chat.item", roomId);
	}

	@Override
	public List<Chat> list(int roomId) {
		
		return sql.selectList("chat.list", roomId);
	}

}
