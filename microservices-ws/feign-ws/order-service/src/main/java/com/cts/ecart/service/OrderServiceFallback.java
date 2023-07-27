package com.cts.ecart.service;


import org.springframework.stereotype.Service;

import com.cts.ecart.entity.User;
@Service
public class OrderServiceFallback implements UserClient {

	@Override
	public User getUser(int userId) {
		// TODO Auto-generated method stub
		
		User fallBackUser=new User(10, "dummy", "dummy1", "dummy2", "dummyemail");

		
		return fallBackUser;
	}
	
	

}
