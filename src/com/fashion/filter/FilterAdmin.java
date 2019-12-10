package com.fashion.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fashion.model.User;

@WebFilter(urlPatterns = { "/admin/*" })
public class FilterAdmin implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession httpSession = req.getSession();

		Object userObj = httpSession.getAttribute("user");
		if (userObj != null) {
			User user = (User) userObj;
			if (user.getRollAdmin().equals("admin")) {
				chain.doFilter(req, resp);

			} else {
				resp.sendRedirect(req.getContextPath() + "/loginAdmin");
			}
			// kiem tra request

			// kiem tra response
		} else {
			resp.sendRedirect(req.getContextPath() + "/loginAdmin");
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
