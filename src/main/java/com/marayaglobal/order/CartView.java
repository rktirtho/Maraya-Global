package com.marayaglobal.order;

public class CartView {
	private int id;
	private int productId;
	private String title;
	private String brand;
	private int quantity;
	private double regular_price;
	private float discount;
	private int currentPrice;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getRegular_price() {
		return regular_price;
	}

	public void setRegular_price(double regular_price) {
		this.regular_price = regular_price;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	public int getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice() {
		this.currentPrice = (int) (regular_price - ((regular_price * discount) / 100));
	}

}
