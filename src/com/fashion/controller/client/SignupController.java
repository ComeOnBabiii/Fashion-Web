package com.fashion.controller.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fashion.model.Category;
import com.fashion.model.Product;
import com.fashion.model.User;
import com.fashion.service.CategoryService;
import com.fashion.service.ProductService;
import com.fashion.service.impl.CategoryServiceImpl;
import com.fashion.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/signup" })
public class SignupController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/signup.jsp");
		dispatcher.forward(req, resp);
	}

}
