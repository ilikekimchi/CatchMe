package jj.j2.sh.controller;

import java.util.Vector;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatServer extends TextWebSocketHandler {
	
	Vector<WebSocketSession> list;
	
	public ChatServer() {
		//부모클래스 생성
		super();
		
		if(list == null)
			list = new Vector<WebSocketSession>();
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		
		list.add(session);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
		
		String user = (String) session.getAttributes().get("peer");
		
		
		for(WebSocketSession peer : list) {
			String msg =  message.getPayload();
			
			peer.sendMessage(new TextMessage(msg) );
			
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		
		
		list.remove(session);
	}
	
}
