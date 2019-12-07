package com.fashion.service;

import java.util.List;

import com.fashion.model.Cart;



public interface CartService {
	void insert(Cart cart);

	void edit(Cart newCart);

	void delete(int id);

	Cart get(int id);
	
	List<Cart> getAll();

	List<Cart> search(String keyword);
}
