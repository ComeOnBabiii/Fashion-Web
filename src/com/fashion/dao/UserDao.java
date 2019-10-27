package com.fashion.dao;

import java.util.List;

import com.fashion.model.User;

public interface UserDao {
	void insert(User user);

	void edit(User user);

	void delete(int id);

	User get(String username);
	
	User get(int id);

	List<User> getAll();

	List<User> search(String username);
}
