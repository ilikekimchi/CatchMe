package jj.j2.sh.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import jj.j2.sh.model.Customer;

public class CustomerInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		Customer customer = (Customer) session.getAttribute("customer");
		
		if(customer != null) {
			return true;
		}
		response.sendRedirect("/login2");
		return false;
	}

}
