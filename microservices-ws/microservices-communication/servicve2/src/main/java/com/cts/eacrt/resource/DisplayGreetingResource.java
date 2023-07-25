package com.cts.eacrt.resource;

import java.util.Map;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/api/greetings")
@CrossOrigin
public class DisplayGreetingResource {

	
	private RestTemplate restTemplate;
	
	public DisplayGreetingResource() {
		restTemplate=new RestTemplate();
	}
	
	
	// servive2 can communicate with service one on port 9091 using restTemplate
	@GetMapping
	public Map<String, Object> getGreetings() {
		
		String msg=restTemplate.getForObject("http://localhost:9091/api/greetingservice", String.class);
		Map<String, Object> data=restTemplate.getForObject("http://localhost:9091/api/greetingservice/config", Map.class);
		return data;
	}
	
	@GetMapping("/test")
	public String postTest() {
		String resp=restTemplate.postForObject("http://localhost:9091/api/greetingservice/Ozvitha",null, String.class);
		return resp;
	}
	

	
	
	
	
	
}
