package com.fashion.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fashion.dao.UserDao;
import com.fashion.jdbc.JDBCConnection;
import com.fashion.model.User;

public class UserDaoImpl extends JDBCConnection implements UserDao {

	@Override
	public void insert(User user) {
		String sql = "INSERT INTO user(name, username, password,avatar,roll,address,phone) VALUES (?,?,?,?,?,?,?)";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getAvatar());
			ps.setString(5, user.getRollAdmin());
			ps.setString(6, user.getAddress());
			ps.setString(7, user.getPhone());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(User user) {
		String sql = "UPDATE user SET name = ? , username = ?,avatar = ?, roll = ?, address=?, phone=? WHERE id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getUsername());
			//ps.setString(3, user.getPassword());
			ps.setString(3, user.getAvatar());
			ps.setString(4, user.getRollAdmin());
			ps.setString(5, user.getAddress());
			ps.setString(6, user.getPhone());
			ps.setInt(7, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM user WHERE id = ?";
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
	public User get(String username) {
		String sql = "SELECT * FROM user WHERE username = ? ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setRollAdmin(rs.getString("roll"));
				user.setAvatar(rs.getString("avatar"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));	
				return user;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public User get(int id) {
		String sql = "SELECT * FROM user WHERE id = ? ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRollAdmin(rs.getString("roll"));
				user.setAvatar(rs.getString("avatar"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				
				return user;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public List<User> getAll() {
		List<User> userList = new ArrayList<User>();
		String sql = "SELECT * FROM user";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRollAdmin(rs.getString("roll"));
				user.setAvatar(rs.getString("avatar"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				
				userList.add(user);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userList;
	}

	@Override
	public List<User> search(String keyword) {
		List<User> userList = new ArrayList<User>();
		String sql = "SELECT * FROM user WHERE name LIKE ? ";
		Connection conn = super.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRollAdmin(rs.getString("roll"));
				user.setAvatar(rs.getString("avatar"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				
				userList.add(user);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userList;
	}

}
