package com.cts.ecart;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.ProductRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		CategoryRepository catRepo = context.getBean(CategoryRepository.class);
		BrandRepository brandRepo = context.getBean(BrandRepository.class);
		ProductRepository prodRepo=context.getBean(ProductRepository.class);
		//catRepo.findAll().forEach(System.out::println);
		
		//brandRepo.findAll().forEach(System.out::println);
		/*
		Category cat = catRepo.findById(1).orElse(null);
		if(cat!=null) {
			System.out.println(cat);
		}else {
			System.out.println("Id not found");
		}
		*/
		
		//Category category = catRepo.findById(45).orElse(null);
		//System.out.println(category);
		
		
		//prodRepo.findAll().forEach(System.out::println);
		
		// List<Product> products = prodRepo.findAllProducts();
		 //products.forEach(System.out::println);
		
		//prodRepo.findByProductTitleLike("%Laptop%").forEach(System.out::println);
		
		Price price = prodRepo.findPriceByProductId(1);
		
	}

}
