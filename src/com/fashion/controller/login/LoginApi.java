package com.fashion.controller.login;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
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
import org.json.JSONObject;

import com.fashion.model.User;
import com.fashion.service.UserService;
import com.fashion.service.impl.UserServiceImpl;
import com.google.gson.Gson;

import net.iharder.Base64;

@WebServlet(urlPatterns = {"/login/api"})
public class LoginApi extends HttpServlet{
	
	UserService userService = new UserServiceImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user= new User();
		Gson gson= new Gson();
		Map map= req.getParameterMap();
		PrintWriter out= resp.getWriter();
		
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
		    String username= user.getUsername();
		    String hash_pws= getSHAHash(pass);
		    
		    User user_db= userService.get(username);
		    
		    JSONObject json = new JSONObject();
		    
		    if (user_db != null && user_db.getPassword().equals(hash_pws) && user_db.getRollAdmin().equals("admin")) {
		    	json.put("check", "OK");
		    	out.print(json);
		    }else {
		    	json.put("check", "FAIL");
		    	out.print(json);
		    }
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

}
