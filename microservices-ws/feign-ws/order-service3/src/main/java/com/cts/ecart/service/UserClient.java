package com.cts.ecart.service;

import org.springframework.cloud.loadbalancer.annotation.LoadBalancerClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cts.ecart.entity.User;

@FeignClient(name="user-service")
@LoadBalancerClient(name="user-service")

public interface UserClient {

	@GetMapping("/api/users/{userId}")
	User getUser(@PathVariable int userId);

}
