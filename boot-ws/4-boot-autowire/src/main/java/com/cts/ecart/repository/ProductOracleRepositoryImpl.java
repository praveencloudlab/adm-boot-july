package com.cts.ecart.repository;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

@Repository

public class ProductOracleRepositoryImpl implements ProductRepository {

	@Override
	public void connect() {
		System.out.println("Connected with Oracle");
	}
}
