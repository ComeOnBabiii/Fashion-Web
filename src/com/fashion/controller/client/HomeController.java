package com.fashion.controller.client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fashion.model.User;

@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object userObject = httpSession.getAttribute("user");
		if(userObject!=null) {
			User user = (User) userObject;
			req.setAttribute("user", user);
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/dashboard.jsp");
		dispatcher.forward(req, resp);
	}

}
