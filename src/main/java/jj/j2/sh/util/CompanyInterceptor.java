package jj.j2.sh.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import jj.j2.sh.model.Company;

public class CompanyInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		Company company = (Company) session.getAttribute("company");
		
		if(company != null) {
			return true;
		}
		response.sendRedirect("/login0");
		return false;
	}

}
