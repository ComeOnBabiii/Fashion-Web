package com.fashion.dao;

import java.util.List;

import com.fashion.model.CartItem;

public interface CartItemDao {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(int id);

	CartItem get(String name);

	CartItem get(int id);

	List<CartItem> getAll();

	List<CartItem> search(int cart_id);
}
