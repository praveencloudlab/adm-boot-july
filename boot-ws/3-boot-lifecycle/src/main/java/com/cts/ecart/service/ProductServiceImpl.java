package com.cts.ecart.service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

@Service
@Scope("prototype")
@Lazy(value = false)
public class ProductServiceImpl {
	
	public ProductServiceImpl() {
		System.out.println("1.constructor on "+System.identityHashCode(this));
	}
	
	@PostConstruct
	public void f1() {
		System.out.println("2.postconstruct on "+System.identityHashCode(this));
	}
	@PostConstruct
	public void f11() {
		System.out.println("2.postconstruct on "+System.identityHashCode(this));
	}
	
	@Bean // Bean will not work on lazy init
	public void f2() {
		System.out.println("3.bean on "+System.identityHashCode(this));
	}
	
	@Bean // Bean will not work on lazy init
	public void f22() {
		System.out.println("3.bean on "+System.identityHashCode(this));
	}
	

	
	@PreDestroy // PreDestroy will not work on prototype scope
	public void f3() {
		System.out.println("4.pre-destroy on "+System.identityHashCode(this));
	}
	
	@PreDestroy // PreDestroy will not work on prototype scope
	public void f33() {
		System.out.println("4.pre-destroy on "+System.identityHashCode(this));
	}
	

	
	
	
	
	
}
