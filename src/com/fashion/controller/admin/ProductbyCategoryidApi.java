package com.fashion.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fashion.model.Product;
import com.fashion.service.ProductService;
import com.fashion.service.impl.ProductServiceImpl;
import com.google.gson.Gson;
@WebServlet(urlPatterns= {"/getProductByCategoryId/api/*"})
public class ProductbyCategoryidApi extends HttpServlet {
	
	ProductService productService = new ProductServiceImpl();
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
		
		List<Product> products = new ArrayList<Product>();
		products= productService.searchbycategoryid(Integer.parseInt(modelId));
		
		Gson gson= new Gson();
		PrintWriter out= resp.getWriter();
		out.print(gson.toJson(products));		
	}
	
}