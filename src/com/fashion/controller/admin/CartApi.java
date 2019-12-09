package com.fashion.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fashion.model.Cart;
import com.fashion.service.CartService;
import com.fashion.service.impl.CartServiceImpl;
import com.google.gson.Gson;
@WebServlet(urlPatterns= {"/cart/api/*"})
public class CartApi extends HttpServlet {
	
	CartService cartService= new CartServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Cart> carts = cartService.getAll();
		
		Gson gson= new Gson();
		PrintWriter out= resp.getWriter();
		out.print(gson.toJson(carts));	
	}
	
}