package com.cts.ecart.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.ecart.entity.User;

@RestController
@RequestMapping("/api/users")
public class UserRestController {

	@GetMapping("/{userId}")
	public User getUserById(@PathVariable int userId) {

		List<User> users = Arrays.asList(new User(10, "praveen", "Praveen", "Reddy", "praveen@abc.com"),
				new User(11, "james", "James", "Goedic", "james@abc.com"),
				new User(12, "kavita", "Kavita", "Jirt", "kavi@abc.com"));

		User userObj = users.stream().filter(user -> user.getUserId() == userId).findFirst().orElse(null);

		if (userObj != null)
			return userObj;
		else
			return null;

	}

}
