package com.cts.ecart.entity;

import java.time.LocalDateTime;

public class Order {

	private int orderId;
	private LocalDateTime orderDate;
	private int productId;
	private int userId;
	private User user;

	public Order() {
		// TODO Auto-generated constructor stub
	}

	public Order(int orderId, LocalDateTime orderDate, int productId, int userId) {
		super();
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.productId = productId;
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderDate=" + orderDate + ", productId=" + productId + ", userId="
				+ userId + ", user=" + user + "]";
	}

}
