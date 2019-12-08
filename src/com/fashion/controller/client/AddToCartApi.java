package com.fashion.controller.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fashion.model.CartItem;
import com.fashion.model.Product;
import com.fashion.service.ProductService;
import com.fashion.service.impl.ProductServiceImpl;
import com.google.gson.Gson;
@WebServlet(urlPatterns= {"/addToCart/api/*"})
public class AddToCartApi extends HttpServlet {

	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Product product = new Product();
		Gson gson= new Gson();
		Map map= req.getParameterMap();
		
		StringBuilder buffer = new StringBuilder();
		BufferedReader reader = req.getReader();
		String line;
		while ((line = reader.readLine()) != null) {
		        buffer.append(line);
		    }
		    
		    String payload = buffer.toString();
		    product = gson.fromJson(payload, Product.class);
		    int idproduct = product.getId();
		    //categoryService.insert(category);
		//resp.sendRedirect("/Fashion/admin/user/list");
		    
		    product = productService.get(idproduct);

			// KHI THEM SAN PHAM VAO GIO HANG MOT LAN NUA
			HttpSession httpSession = req.getSession();
			Object obj = httpSession.getAttribute("cart");
			if (obj == null) {
				CartItem cartItem = new CartItem();
				cartItem.setProduct(product);
				cartItem.setQuantity(1);
				cartItem.setUnitPrice(product.getPrice());

				Map<Integer, CartItem> mapcart = new HashMap<Integer, CartItem>();
				// Su dung map de luu va tim kiem nhanh hon
				mapcart.put(cartItem.getProduct().getId(), cartItem);

				httpSession.setAttribute("cart", mapcart);// luu vao session

			} else {
				Map<Integer, CartItem> mapcart = (Map<Integer, CartItem>) obj;
				CartItem cartItem = mapcart.get(product.getId());
				// 1: Chua co san pham trong gio hang
				if (cartItem == null) {
					CartItem cartItems = new CartItem();
					cartItems.setProduct(product);
					cartItems.setQuantity(1);
					cartItems.setUnitPrice(product.getPrice());

					// Su dung map de luu va tim kiem nhanh hon
					mapcart.put(cartItems.getProduct().getId(), cartItems);

					httpSession.setAttribute("cart", mapcart);// luu vao session
				} else {
					// Truong hop da co roi
					cartItem.setQuantity(1 + cartItem.getQuantity());
					
					httpSession.setAttribute("cart", mapcart);
				}
			}
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
		
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		
		if (obj != null) {
			Map<Integer, CartItem> map11 = (Map<Integer, CartItem>) httpSession.getAttribute("cart");
			map11.remove(Integer.parseInt(modelId));
			//map11.remove(Object(modelId));
			httpSession.setAttribute("cart", map11);
		}
	}
}