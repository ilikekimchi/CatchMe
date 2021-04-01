package jj.j2.sh.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import jj.j2.sh.model.Customer;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	//리팩터링 => 기존의 코드를 불러와서 바꾸는것
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		Customer customer = (Customer) session.getAttribute("admin");
		
		if(customer == null)
			response.sendRedirect("/login2");
		else if(!"admin".equals(customer.getCustomerId())) //관리자(admin)가 아니면(!) login으로 되돌아감
			response.sendRedirect("/login2");
		else
			return true;
		
		return false;
	}

}
