package com.cts.ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.ecart.model.Product;

@Controller
public class ProductController {
	
	
	
	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping(value = "/s1")
	@ResponseBody
	public String f1() {
		System.out.println(">>> f1 method..");
		return "My First Web application";
	}
	
	@RequestMapping(value = "/s2")
	public String f2() {
		// business logic ...
		System.out.println(">>> business logic of s2");

		// redirect t0 s3 
		return "redirect:s3"; 
	}
	
	@RequestMapping(value = "/s3")
	public String f3(Model model) {
		
		Product prod=new Product(10,"Laptop",45600,"Dell I9");
		model.addAttribute("user", "Admin");
		model.addAttribute("city", "London");
		model.addAttribute("product", prod);
		return "two"; 
	}
	
	@RequestMapping("/loadForm")
	public String loadProductForm() {
		return "form";
	}
	
	
	@RequestMapping("/saveProduct")
	public String saveProduct(@RequestParam("id") int prodID,
					@RequestParam("name") String prodName,
					@RequestParam("price") double price,
					@RequestParam("description") String description) {
		System.out.println("Product ID: "+prodID);
		System.out.println("Product  Name: "+ prodName);
		System.out.println("Product Price: "+price);
		System.out.println("Product Description: "+description);

		
		return "form";
	}
	
	@RequestMapping("/saveProductV1")
	public String saveProductV1(Model model,@ModelAttribute Product prod) {
		model.addAttribute("product", prod);
		return "display";
	}
	
	
	
	
	
	

}
