package com.cts.ecart.dto;

import java.util.List;

public class CategoryWithProductsDTO {
    private int categoryId;
    private String categoryTitle;
    private List<ProductDTO> products;
    
    
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	public List<ProductDTO> getProducts() {
		return products;
	}
	public void setProducts(List<ProductDTO> products) {
		this.products = products;
	}

    // Constructors, getters, and setters
    
    
}
