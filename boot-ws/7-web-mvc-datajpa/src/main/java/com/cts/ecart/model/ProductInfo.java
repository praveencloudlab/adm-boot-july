package com.cts.ecart.model;

public class ProductInfo {
	private String productTitle;
	private double rating;
	private String description;
	private String keywords;
	private double price;
	private int stock;
	private int categoryId;
	private int brandId;

	public String getProductTitle() {
		return productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	@Override
	public String toString() {
		return "ProductInfo [productTitle=" + productTitle + ", rating=" + rating + ", description=" + description
				+ ", keywords=" + keywords + ", price=" + price + ", stock=" + stock + ", categoryId=" + categoryId
				+ ", brandId=" + brandId + "]";
	}

	
	

}
