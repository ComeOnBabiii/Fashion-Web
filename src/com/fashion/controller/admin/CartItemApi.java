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
import com.fashion.model.CartItem;
import com.fashion.service.CartItemService;
import com.fashion.service.impl.CartItemServiceImpl;
import com.google.gson.Gson;
@WebServlet(urlPatterns= {"/cartitem/api/*"})
public class CartItemApi extends HttpServlet {
	
	CartItemService cartitemService= new CartItemServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pathInfo = req.getPathInfo();

		if(resp == null || pathInfo.equals("/")){

			resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return;
		}

		String[] splits = pathInfo.split("/");
		
		if(splits.length != 2) {
			
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return;
		}

		String modelId = splits[1];
		
		List<CartItem> cartitems = cartitemService.search(Integer.parseInt(modelId));
		
		Gson gson= new Gson();
		PrintWriter out= resp.getWriter();
		out.print(gson.toJson(cartitems));	
	}
	
}