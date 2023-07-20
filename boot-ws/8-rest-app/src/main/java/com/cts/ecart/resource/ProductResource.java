package com.cts.ecart.resource;

import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.resource.HttpResource;

@RestController
public class ProductResource {
	
	@GetMapping
	public String f1() {
		return "GET MAPPING";
	}
	@GetMapping("/{id}")
	public String f1111(@PathVariable int id) {
		return "GET MAPPING - "+id;
	}
	
	@GetMapping("/{start}/{end}")
	public String f11111(@PathVariable int start,@PathVariable int end) {
		return "GET MAPPING - "+start+" and "+end;
	}
	
	@GetMapping("/filter/{name}/{id}")
	public String f111111(@PathVariable String name,@PathVariable int id) {
		return "GET MAPPING - "+name+" and "+id;
	}
	
	
	
	@GetMapping(value = "/byId")
	public String f11() {
		return "GET MAPPING - By ID";
	}
	
	@GetMapping(value = "/byName")
	public String f111() {
		return "GET MAPPING - By Name";
	}
	
	
	
	@PostMapping
	public String f2() {
		return "POST MAPPING";
	}
	
	@PatchMapping
	public String f3() {
		return "PATCH MAPPING";
	}
	
	@PutMapping(value = "/save" )
	public String f33(@RequestBody Object obj) {
		return "PUT MAPPING - "+obj;
	}
	
	@PutMapping
	public String f4() {
		return "PUT MAPPING";
	}
	
	@DeleteMapping
	public String f5() {
		return "DELETE MAPPING";
	}

}
