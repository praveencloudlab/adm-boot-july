package com.cts.ecart.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.ecart.entity.Order;
import com.cts.ecart.entity.User;
import com.cts.ecart.service.UserClient;

@RestController
@RequestMapping("/api/orders")
public class OrderRestController {
	
	@Autowired
	private UserClient userClient;
	
	@GetMapping("/{orderId}")
	public Order getOrder(@PathVariable int orderId) {
		System.out.println("===========================================");
		System.out.println("ORDER-SERVICE - 3 for order-id "+orderId);
		System.out.println("===========================================");
		
		// get order details from Database for the orderId
		Order order=new Order(1, LocalDateTime.now(), 1023,12);
		User user = userClient.getUser(order.getUserId());
		order.setUser(user);
		System.out.println(user);
		return order;
	}
	
	

}
