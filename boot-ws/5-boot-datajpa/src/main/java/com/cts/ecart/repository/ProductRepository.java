package com.cts.ecart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.entity.Stock;
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	
	// JPQL 
	@Query(name = "q1", value = "FROM com.cts.ecart.entity.Product P LEFT JOIN FETCH P.price LEFT JOIN FETCH P.stock WHERE P.productId=:productId ")
	Product findProductById(int productId);
	@Query(name="q2",value = "FROM com.cts.ecart.entity.Product P LEFT JOIN FETCH P.price LEFT JOIN FETCH P.stock")
	List<Product> findAllProducts();
	
	
	// find price by productId
    @Query("SELECT p.price FROM com.cts.ecart.entity.Product p WHERE p.productId = :productId")
    Price findPriceByProductId(Integer productId);

    // find stock by productId
    @Query("SELECT p.stock FROM com.cts.ecart.entity.Product p WHERE p.productId = :productId")
    Stock findStockByProductId(Integer productId);

	
	// DSL (Domain spefic language)
	
	// List all products by Product Title
	
	List<Product> findByProductTitleLike(String s1);
	
	
	
	
	
	
}
