package com.fashion.controller.client;

import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fashion.model.CartItem;
import com.fashion.model.User;

@WebServlet(urlPatterns = { "/order" })
public class OrderController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		if (obj != null) {
			Map<Integer, com.fashion.model.CartItem> map = (Map<Integer, CartItem>) httpSession.getAttribute("cart");
			double total =0;
			for(Entry<Integer, CartItem> entry : map.entrySet()) {
				CartItem cartItem =  entry.getValue();
				 total += cartItem.getUnitPrice()*cartItem.getQuantity();
			}
			req.setAttribute("total", total);
		}
		else {
			req.setAttribute("cartnull", "cartnull");
		}
		
		Object userObject = httpSession.getAttribute("user");
		if(userObject!=null) {
		}
		else {
			req.setAttribute("userlogin", "abc");
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/order.jsp");
		dispatcher.forward(req, resp);
	}

}
