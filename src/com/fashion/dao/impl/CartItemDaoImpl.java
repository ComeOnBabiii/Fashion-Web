package com.fashion.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.fashion.dao.CartItemDao;
import com.fashion.dao.UserDao;
import com.fashion.jdbc.JDBCConnection;
import com.fashion.model.Cart;
import com.fashion.model.CartItem;
import com.fashion.model.Product;
import com.fashion.model.User;
import com.fashion.service.CartService;
import com.fashion.service.ProductService;
import com.fashion.service.impl.CartServiceImpl;
import com.fashion.service.impl.ProductServiceImpl;

public class CartItemDaoImpl extends JDBCConnection implements CartItemDao {
	CartService cartService = new CartServiceImpl();
	ProductService productService = new ProductServiceImpl();
	UserDao userDao = new UserDaoImpl();
	
	
	@Override
	public void insert(CartItem cartItem) {
		String sql = "INSERT INTO cart_item(id_cart, id_product, quantity, unit_price) VALUES (?,?,?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, cartItem.getCart().getId());
			ps.setInt(2, cartItem.getProduct().getId());
			ps.setInt(3, cartItem.getQuantity());
			ps.setDouble(4, cartItem.getUnitPrice());
			ResultSet generatedKeys = ps.getGeneratedKeys();
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				cartItem.setId(id);// set id vao doi tuong cart
			}
			ps.executeUpdate();

			// Lay ID set ve
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(CartItem cartItem) {
		String sql = "UPDATE cart_item SET id_cart = ?, id_product = ?, quantity = ?, unit_price=? WHERE id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, cartItem.getCart().getId());
			ps.setInt(2, cartItem.getProduct().getId());
			ps.setInt(3, cartItem.getQuantity());
			ps.setDouble(4, cartItem.getUnitPrice());
			ResultSet generatedKeys = ps.getGeneratedKeys();
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				cartItem.setId(id);// set id vao doi tuong cart
			}
			ps.executeUpdate();

			// Lay ID set ve
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM cart_item WHERE id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public CartItem get(int id) {
		String sql = "SELECT " + 
				"cart_item.id, " + 
				"cart_item.quantity, " + 
				"cart_item.unit_price, " + 
				"cart.id_user, " + 
				"cart.buy_date, " + 
				"product.name, " + 
				"product.price " + 
				"FROM cart_item " + 
				"INNER JOIN cart " + 
				"ON cart_item.id_cart = cart.id " + 
				"INNER JOIN product " + 
				"ON cart_item.id_product = product.id " +
				"WHERE cart_item.id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userDao.get(rs.getInt("id_user"));
				
				Cart cart = new Cart();
				cart.setBuyer(user);
				cart.setBuyDate(rs.getDate("buy_date"));
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setUnitPrice(rs.getDouble("unit_price"));
				
				
				return cartItem;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<CartItem> getAll() {
		List<CartItem> cartItemList = new ArrayList<CartItem>();
		String sql = "SELECT " + 
				"cart_item.id, " + 
				"cart_item.quantity, " + 
				"cart_item.unit_price, " + 
				"cart.id_user, " + 
				"cart.buy_date, " + 
				"product.name, " + 
				"product.price " + 
				"FROM cart_item " + 
				"INNER JOIN cart " + 
				"ON cart_item.id_cart = cart.id " + 
				"INNER JOIN product " + 
				"ON cart_item.id_product = product.id ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userDao.get(rs.getInt("id_user"));
				
				Cart cart = new Cart();
				cart.setBuyer(user);
				cart.setBuyDate(rs.getDate("buy_date"));
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setUnitPrice(rs.getDouble("unit_price"));

				cartItemList.add(cartItem);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartItemList;
	}

	public List<CartItem> search(int cart_id) {
		List<CartItem> cartItemList = new ArrayList<CartItem>();
		String sql = "SELECT " + 
				"cart_item.id, " + 
				"cart_item.quantity, " + 
				"cart_item.unit_price, " + 
				"cart.id_user, " + 
				"cart.buy_date, " + 
				"product.name, " + 
				"product.price " + 
				"FROM cart_item " + 
				"INNER JOIN cart " + 
				"ON cart_item.id_cart = cart.id " + 
				"INNER JOIN product " + 
				"ON cart_item.id_product = product.id WHERE cart_item.id= ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, cart_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userDao.get(rs.getInt("id_user"));
				
				Cart cart = new Cart();
				cart.setBuyer(user);
				cart.setBuyDate(rs.getDate("buy_date"));
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setUnitPrice(rs.getDouble("unit_price"));

				cartItemList.add(cartItem);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartItemList;
	}

	@Override
	public CartItem get(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
