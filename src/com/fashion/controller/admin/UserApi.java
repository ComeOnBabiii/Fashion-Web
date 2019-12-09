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
@WebServlet(urlPatterns= {"/getListUser/api/*"})
public class UserApi extends HttpServlet {
	UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//	setAccessControlHeaders(resp);
		List<User> userList = userService.getAll();
		
		Gson gson= new Gson();
		PrintWriter out= resp.getWriter();
		out.print(gson.toJson(userList));
		
	}
	
//	private void setAccessControlHeaders(HttpServletResponse resp) {
//	      resp.addHeader("Access-Control-Allow-Origin", "*");
//	      resp.addHeader("Access-Control-Allow-Methods", "GET");
////	      resp.addHeader("Access-Control-Allow-Methods", "POST");
//	      resp.addHeader("Access-Control-Allow-Methods", "PUT");
//	      resp.addHeader("Access-Control-Allow-Methods", "DELETE");
//	  }
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
		userService.delete(Integer.parseInt(modelId));
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		Gson gson= new Gson();
		Map map= req.getParameterMap();
		
		//String name= String.valueOf(req.getParameter("name"));
		//String username= String.valueOf(req.getParameter("username"));
			StringBuilder buffer = new StringBuilder();
		    BufferedReader reader = req.getReader();
		    String line;
		    while ((line = reader.readLine()) != null) {
		        buffer.append(line);
		    }
		    
		    String payload = buffer.toString();
		    user = gson.fromJson(payload, User.class);
		    
		    String pwd= user.getPassword();
		    String pass="";
		    try {
		    	 String afterDecrypt = decrypt(pwd);
		    	 
		    	 byte[] bytes = Hex.decodeHex(afterDecrypt.toCharArray());
		    	  pass= new String(bytes, "UTF-8");
		    	
		    	 } catch (Exception e) {
		    	 e.printStackTrace();
		    	 }
		    String hash_pws= getSHAHash(pass);
		   user.setPassword(hash_pws);
		    
		userService.insert(user);
		//resp.sendRedirect("/Fashion/admin/user/list");
	}
	
	public static String getSHAHash(String input) {
	    try {
	      MessageDigest md = MessageDigest.getInstance("SHA-1");
	      byte[] messageDigest = md.digest(input.getBytes());
	      return convertByteToHex(messageDigest);
	    } catch (NoSuchAlgorithmException e) {
	      throw new RuntimeException(e);
	    }
	  }
	
	public static String convertByteToHex(byte[] data) {
	    StringBuffer sb = new StringBuffer();
	    for (int i = 0; i < data.length; i++) {
	      sb.append(Integer.toString((data[i] & 0xff) + 0x100, 16).substring(1));
	    }
	    return sb.toString();
	  }
	
	public String decrypt(final String encrypted) throws Exception {
		 
		 try {
		 SecretKey key = new SecretKeySpec(Base64.decode("u/Gu5posvwDsXUnV5Zaq4g=="), "AES");
		 AlgorithmParameterSpec iv = new IvParameterSpec(Base64.decode("5D9r9ZVzEYYgha93/aUK2w=="));
		 byte[] decodeBase64 = Base64.decode(encrypted);
		 Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		 cipher.init(Cipher.DECRYPT_MODE, key, iv);
		 return new String(cipher.doFinal(decodeBase64), "UTF-8");
		 } catch (Exception e) {
		 e.printStackTrace();
		 throw new RuntimeException("This should not happen in production.", e);
		 }
		} 
	
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		Gson gson= new Gson();
		
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
		
		
		//String name= String.valueOf(req.getParameter("name"));
		//String username= String.valueOf(req.getParameter("username"));
		StringBuilder buffer = new StringBuilder();
	    BufferedReader reader = req.getReader();
	    String line;
	    while ((line = reader.readLine()) != null) {
	        buffer.append(line);
	    }
	    
	    String payload = buffer.toString();
	    user = gson.fromJson(payload, User.class);
	    
	    String pwd= user.getPassword();
	    String pass="";
	    try {
	    	 String afterDecrypt = decrypt(pwd);
	    	 
	    	 byte[] bytes = Hex.decodeHex(afterDecrypt.toCharArray());
	    	  pass= new String(bytes, "UTF-8");
	    	
	    	 } catch (Exception e) {
	    	 e.printStackTrace();
	    	 }
	    String hash_pws= getSHAHash(pass);
	    user.setPassword(hash_pws);

		user.setId(Integer.parseInt(modelId));
		userService.edit(user);
	}
}