package com.cts.ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.entity.Stock;
import com.cts.ecart.model.ProductInfo;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.ProductRepository;

@Controller
public class ProductController {
	
	
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private BrandRepository brandRepository;
	
	@RequestMapping(value = "/")
	public String welcome() {
		return "index.html";
	}
	
	@RequestMapping(value = "/loadProductForm")
	public String loadProductForm(Model model) {
		
		model.addAttribute("categories", categoryRepository.findAll());
		
		return "product-form";
	}
	
	
	@GetMapping("/categories/{id}/brands")
	@ResponseBody
	public List<Brand> getBrandsByCategory(@PathVariable("id") int categoryId) {
		Category category = categoryRepository.findById(categoryId).orElse(null);
	
		return category.getBrands();
	}
	
	@RequestMapping(value = "/saveProduct",method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute ProductInfo product) {
		
		Product prod=new Product();
		prod.setDescription(product.getDescription());
		prod.setKeywords(product.getKeywords());
		prod.setPrice(new Price(product.getPrice()));
		prod.setStock(new Stock(product.getStock()));
		prod.setRating(product.getRating());
		prod.setProductTitle(product.getProductTitle());
		
		Product productObj = productRepository.save(prod);
		Brand b= brandRepository.findById(product.getBrandId()).orElse(null);
		b.getProdsBrands().add(prod);
		
		Category cat=categoryRepository.findById(product.getCategoryId()).orElse(null);
		cat.getBrands().add(b);
		cat.getCatProds().add(prod);
		categoryRepository.save(cat);
		//return productService.save(product);
		
		//return "product-form";
		return "redirect:listAllProducts";
	}
	
	@RequestMapping(value = "/listAllProducts")
	public String listAllProducts(Model model) {
		
		List<Product> products = productRepository.findAll();
		model.addAttribute("allProducts", products);
		return "products";
	}

}
