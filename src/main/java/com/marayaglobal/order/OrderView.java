package com.marayaglobal.order;

import java.sql.Timestamp;

import com.marayaglobal.beans.user.Address;

public class OrderView {
	private int id;
	private int productId;
	private String title;
	private String brand;
	private String model;
	private int quantity;
	private double regular_price;
	private float discount;
	private int currentPrice;
	private String status;
	private Timestamp timestamp;
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
	public void setCurrentPrice(int currentPrice) {
		this.currentPrice = currentPrice;
	}
	
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	@Override
	public String toString() {
		return "OrderView [id=" + id + ", productId=" + productId + ", title=" + title + ", brand=" + brand
				+ ", quantity=" + quantity + ", regular_price=" + regular_price + ", discount=" + discount
				+ ", currentPrice=" + currentPrice + ", status=" + status + ", timestamp=" + timestamp + "]";
	}
	
	


}
