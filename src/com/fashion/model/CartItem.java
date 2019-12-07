package com.fashion.model;

public class CartItem {
	private int id;
	private int quantity;
	private double unitPrice;
	private Product product;
	private Cart cart;

	public int getId() {
		return id;
	}

	public void setId(int idt) {
		this.id = idt;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
