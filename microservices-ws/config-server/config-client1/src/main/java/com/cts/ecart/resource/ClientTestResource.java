package com.cts.ecart.resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClientTestResource {
	
	@Value("${name}")
	private String personName;
	@GetMapping
	public String f1() {
		return "Welcome "+personName;
	}

}
