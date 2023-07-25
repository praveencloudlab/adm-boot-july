package com.cts.eacrt.resource;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/greetingservice")
@CrossOrigin
public class GreetingResource {
	@GetMapping
	public String sendGreeting() {
		return "From service1: Good Noon";
	}
	
	
	@PostMapping("/{name}")
	public String f3(@PathVariable String name) {
		return "From Service1: Name: "+name;
	}
	
	@GetMapping("/config")
	public Map<String, Object> f2() {
		Map<String, Object> data=new HashMap<String, Object>();
		data.put("greeting", "Good Afternoon");
		data.put("name", "Praveen");
		data.put("city", "London");
		
		return data;
	}

}
