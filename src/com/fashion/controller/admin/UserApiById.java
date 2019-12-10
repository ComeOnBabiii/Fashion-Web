package com.fashion.controller.admin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.List;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Hex;

import com.fashion.model.User;
import com.fashion.service.UserService;
import com.fashion.service.impl.UserServiceImpl;
import com.google.gson.Gson;

import net.iharder.Base64;
@WebServlet(urlPatterns= {"/getUserById/api/*"})
public class UserApiById extends HttpServlet {
	UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//	setAccessControlHeaders(resp);
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
		
		User user= new User();
		user= userService.get(Integer.parseInt(modelId));
		
		Gson gson= new Gson();
		PrintWriter out= resp.getWriter();
		out.print(gson.toJson(user));
		
	}
}