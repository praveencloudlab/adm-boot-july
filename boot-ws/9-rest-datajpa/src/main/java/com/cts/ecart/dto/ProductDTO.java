package com.cts.ecart.dto;

import java.util.ArrayList;
import java.util.List;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Product;

public class ProductDTO {
	private int productId;
	private String productTitle;
	private double price;

	
	public CategoryWithBrandsDTO transformToCategoryWithBrandsDTO(Category category) {
	    CategoryWithBrandsDTO dto = new CategoryWithBrandsDTO();
	    dto.setCategoryId(category.getCategoryId());
	    dto.setCategoryTitle(category.getCategoryTitle());

	    List<BrandDTO> brandDTOs = new ArrayList<>();
	    for (Brand brand : category.getBrands()) {
	        BrandDTO brandDTO = new BrandDTO();
	        brandDTO.setBrandId(brand.getBrandId());
	        brandDTO.setBrandTitle(brand.getBrandTitle());
	        brandDTOs.add(brandDTO);
	    }
	    dto.setBrands(brandDTOs);

	    return dto;
	}

	public CategoryWithProductsDTO transformToCategoryWithProductsDTO(Category category) {
	    CategoryWithProductsDTO dto = new CategoryWithProductsDTO();
	    dto.setCategoryId(category.getCategoryId());
	    dto.setCategoryTitle(category.getCategoryTitle());

	    List<ProductDTO> productDTOs = new ArrayList<>();
	    for (Product product : category.getCatProds()) {
	        ProductDTO productDTO = new ProductDTO();
	        productDTO.setProductId(product.getProductId());
	        productDTO.setProductTitle(product.getProductTitle());
	        productDTO.setPrice(product.getPrice().getPrice());
	        productDTOs.add(productDTO);
	    }
	    dto.setProducts(productDTOs);

	    return dto;
	}

	
	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductTitle() {
		return productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
	
	

	// Constructors, getters, and setters

}
