package com.fashion.service.impl;

import java.util.List;

import com.fashion.dao.CartDao;
import com.fashion.dao.CartItemDao;
import com.fashion.dao.impl.CartDaoImpl;
import com.fashion.dao.impl.CartItemDaoImpl;
import com.fashion.model.Cart;
import com.fashion.model.CartItem;
import com.fashion.service.CartItemService;
import com.fashion.service.CartService;


public class CartItemServiceImpl implements CartItemService {
	//CartDao cartDao = new CartDaoImpl();
	CartItemDao cartItemDao = new CartItemDaoImpl();
	@Override
	public List<CartItem> search(int cart_id) {
		return cartItemDao.search(cart_id);
	}

	@Override
	public void insert(CartItem cart) {
		cartItemDao.insert(cart);

	}

	@Override
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	@Override
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	@Override
	public void edit(CartItem newCart) {
		/*
		 * CartItem oldCart = cartItemDao.get(newCart.getId());
		 * 
		 * oldCart.setBuyDate(newCart.getBuyDate());
		 * oldCart.setBuyer(newCart.getBuyer());
		 * 
		 * 
		 * cartDao.edit(oldCart);
		 */

	}

	@Override
	public void delete(int id) {
		cartItemDao.delete(id);
	}
}
