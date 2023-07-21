package com.cts.ecart.dto;

import java.util.List;

public class CategoryWithBrandsDTO {
    private int categoryId;
    private String categoryTitle;
    private List<BrandDTO> brands;
    
    public CategoryWithBrandsDTO() {
		// TODO Auto-generated constructor stub
	}
    
    
    
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
	public List<BrandDTO> getBrands() {
		return brands;
	}
	public void setBrands(List<BrandDTO> brands) {
		this.brands = brands;
	}
	
	
	
	
	

    // Constructors, getters, and setters
    
    
}

