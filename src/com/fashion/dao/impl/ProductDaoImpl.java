package com.fashion.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fashion.dao.ProductDao;
import com.fashion.jdbc.JDBCConnection;
import com.fashion.model.Category;
import com.fashion.model.Product;

public class ProductDaoImpl extends JDBCConnection implements ProductDao {

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO product(name,price,image,idcate) VALUES (?,?,?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE product SET name = ? , price = ? , image = ?, idcate = ? WHERE idpro = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setInt(5, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM product WHERE idpro = ?";
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
	public Product get(String username) {
		String sql = "SELECT * FROM product WHERE name = ? ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("idpro"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));

				Category category = new Category();
				category.setId(rs.getInt("idcate"));
				product.setCategory(category);

				return product;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product get(int id) {
		String sql = "SELECT * FROM product WHERE idpro = ? ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("idpro"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));

				Category category = new Category();
				category.setId(rs.getInt("idcate"));
				product.setCategory(category);

				return product;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getAll() {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT \r\n" + 
				"product.idpro,\r\n" + 
				"product.idcate as id_Cate,\r\n" + 
				"product.name as product_name,\r\n" + 
				"product.price,\r\n" + 
				"product.image,\r\n" + 
				"\r\n" + 
				"category.idcate,\r\n" + 
				"category.name as category_name,\r\n" + 
				"category.description\r\n" + 
				"from product inner join category\r\n" + 
				"where product.idcate =  category.idcate";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("idpro"));
				product.setName(rs.getString("product_name"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));

				Category category = new Category();
				category.setId(rs.getInt("idcate"));
				category.setName(rs.getString("category_name"));
				category.setDescription(rs.getString("description"));
				
				product.setCategory(category);

				products.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return products;
	}

	@Override
	public List<Product> search(String keyword) {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE name LIKE ? ";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("idpro"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));

				Category category = new Category();
				category.setId(rs.getInt("idcate"));
				product.setCategory(category);

				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return products;
	}

	@Override
	public List<Product> searchbycategoryid(int id) {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE idcate = ? ";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("idpro"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));

				Category category = new Category();
				category.setId(rs.getInt("idcate"));
				product.setCategory(category);

				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return products;
	}

}
