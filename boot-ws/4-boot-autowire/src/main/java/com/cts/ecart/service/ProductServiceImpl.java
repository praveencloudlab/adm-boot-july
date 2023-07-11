package com.cts.ecart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.cts.ecart.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	//@Qualifier(value = "productMySQLRepositoryImpl")
	@Qualifier(value = "productOracleRepositoryImpl")
	private ProductRepository prodRepo;
	
	//@Value("${name}")
	//private String personName;
	@Autowired
	private Environment env;
	
	@Override
	public void f2() {
		System.out.println("service::");
		prodRepo.connect();
	}
	
	//@Bean
	@Override
	public void f1() {
		//System.out.println("Name: "+env.getProperty("name"));
		System.out.println("Name: "+env.getRequiredProperty("name"));
		System.out.println("Mobile Name: "+env.getProperty("ecart.categories.mobiles.name"));
		System.out.println("Mobile Price: "+env.getProperty("ecart.categories.mobiles.price"));
		System.out.println("Mobile Color: "+env.getProperty("ecart.categories.mobiles.color"));
	}
	
	
	

}
