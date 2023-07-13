package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Category;
import com.cts.ecart.repository.CategoryRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		CategoryRepository catRepo = context.getBean(CategoryRepository.class);
		
		catRepo.findAll().forEach(System.out::println);
		
		/*
		Category cat = catRepo.findById(1).orElse(null);
		if(cat!=null) {
			System.out.println(cat);
		}else {
			System.out.println("Id not found");
		}
		*/
		
	}

}
