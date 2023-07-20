package com.cts.ecart.entity;

import org.hibernate.annotations.DynamicUpdate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity(name="priceInfo")
@DynamicUpdate
public class Price {

	@Id
	@GeneratedValue
	private int priceId;
	private double price;
	public Price() {
		// TODO Auto-generated constructor stub
	}

	public Price(double price) {
		// TODO Auto-generated constructor stub
		this.price=price;
	}

	public int getPriceId() {
		return priceId;
	}

	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Price [priceId=" + priceId + ", price=" + price + "]";
	}

}
