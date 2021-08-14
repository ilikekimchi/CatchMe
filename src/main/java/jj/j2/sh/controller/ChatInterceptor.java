package jj.j2.sh.controller;

import java.net.InetSocketAddress;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

public class ChatInterceptor extends HttpSessionHandshakeInterceptor {

	@Override
	public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		
		//ip주소와 포트넘버까지 넘겨줌
		String peer = request.getRemoteAddress().toString();
		
		if(request instanceof ServletServerHttpRequest) {
			ServletServerHttpRequest req = (ServletServerHttpRequest) request;
			
			HttpSession session = req.getServletRequest().getSession();
			
			peer = (String) session.getAttribute("user");
			
			System.out.println(peer);
		}
		
		attributes.put("peer", peer);
		
		return true;
		// return super.beforeHandshake(request, response, wsHandler, attributes);
	}
	
}
