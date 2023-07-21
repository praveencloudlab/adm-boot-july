package com.cts.ecart.resource;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.ecart.dto.BrandDTO;
import com.cts.ecart.dto.CategoryWithBrandsDTO;
import com.cts.ecart.dto.CategoryWithProductsDTO;
import com.cts.ecart.dto.ProductDTO;
import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.entity.Stock;
import com.cts.ecart.model.ProductInfo;
import com.cts.ecart.service.CategoryService;
import com.cts.ecart.service.ProductServiceImpl;

@RestController
@RequestMapping(value = "/api/products")
public class ProductResource {

	@Autowired
	private ProductServiceImpl productService;
	@Autowired
	private CategoryService categoryService;

	@GetMapping
	public List<Product> listAllProducts() {
		return productService.listAllProducts();
	}

	@GetMapping("/{productId}")
	public Product findProductById(@PathVariable int productId) {
		return productService.findById(productId);
	}

	// filter by product title
	@GetMapping("/filter/{productName}")
	public List<Product> findByProductTitleEquals(@PathVariable String productName) {
		return productService.findByProductTitleEquals(productName);
	}

	// filter products by low price
	@GetMapping("/filter/price/less/{price}")
	public List<Product> findByPrice_priceLessThanEqual(@PathVariable double price) {
		return productService.findByPrice_priceLessThanEqual(price);
	}

	// filter products by high price
	@GetMapping("/filter/price/greater/{price}")
	public List<Product> findByPrice_priceGreaterThanEqual(@PathVariable double price) {
		return productService.findByPrice_priceGreaterThanEqual(price);
	}

	// filter products by price low and high
	@GetMapping("/filter/price/between/{lowPrice}/{highPrice}")
	public List<Product> findByPrice_priceBetween(@PathVariable double lowPrice,@PathVariable double highPrice) {
		return productService.findByPrice_priceBetween(lowPrice, highPrice);
	}

	// list all brands
	@GetMapping(value = "/brands")
	public List<Brand> listAllBrands() {
		return productService.listAllBrands();
	}

	// find brand by ID
	@GetMapping(value = "/brands/{brandId}")
	public Brand findBrandById(@PathVariable int brandId) {
		return productService.findBrandById(brandId);
	}

	// list all categories
	@GetMapping(value = "/categories")
	public List<Category> listAllcategories() {
		return productService.listAllcategories();
	}

	// find category by category ID
	@GetMapping(value = "/categories/{categoryId}")
	public Category findCategoryById(@PathVariable int categoryId) {
		return productService.findCategoryById(categoryId);
	}
	
	@GetMapping("/withBrands")
    public List<CategoryWithBrandsDTO> getCategoriesWithBrands() {
        List<Category> categories = categoryService.getAllCategories();
        List<CategoryWithBrandsDTO> categoryDTOs = new ArrayList<>();

        for (Category category : categories) {
            CategoryWithBrandsDTO categoryDTO = transformToCategoryWithBrandsDTO(category);
            categoryDTOs.add(categoryDTO);
        }

        return categoryDTOs;
    }
	
	
	// DML operations
		// save/edit product
	    @PostMapping
		public Product save(@RequestBody ProductInfo product) {
	    	
	    	Product prod=new Product();
			prod.setDescription(product.getDescription());
			prod.setKeywords(product.getKeywords());
			prod.setProductTitle(product.getProductTitle());
			prod.setRating(product.getRating());
			
			Price price=new Price();
			Stock stock=new Stock();
			price.setPrice(product.getPrice());
			stock.setStock(product.getStock());
			prod.setPrice(price);
			prod.setStock(stock);
			
			prod = productService.save(prod);
			
			Brand b= productService.findBrandById(product.getBrandId());
			b.getProdsBrands().add(prod);
			Category cat=productService.findCategoryById(product.getCategoryId());
			cat.getBrands().add(b);
			cat.getCatProds().add(prod);
			productService.saveCategory(cat);
			return prod;
		}
	    
	    //update Product
	    
		
		// save List of products
		public List<Product> saveAllProducts(List<Product> products){
			return productService.saveAllProducts(products);
		}
		
		// delete product
		public void deleteProduct(int productId) {
			productService.deleteProduct(productId);
		}
		
		// add/edit new category
		public Category saveCategory(Category category) {
			//return categoryService.(category);
			return null;
		}
		
		// delete by category ID
		public void deleteCategory(int categoryId) {
			//categoryService.deleteById(categoryId);
		}
		
		// add/edit new brand 
		public Brand saveBrand(Brand brand) {
			return null;
		}
		
		//delete brand by brand ID
		public void deleteByBrandId(int brandId) {
			//brandRepository.deleteById(brandId);
		}
	
	//==================================================================
	private CategoryWithBrandsDTO transformToCategoryWithBrandsDTO(Category category) {
        CategoryWithBrandsDTO dto = new CategoryWithBrandsDTO();
        dto.setCategoryId(category.getCategoryId());
        dto.setCategoryTitle(category.getCategoryTitle());

        List<BrandDTO> brandDTOs = new ArrayList<>();
        for (Brand brand : category.getBrands()) {
            BrandDTO brandDTO = new BrandDTO();
            brandDTO.setBrandId(brand.getBrandId());
            brandDTO.setBrandTitle(brand.getBrandTitle());
            brandDTOs.add(brandDTO);
        }
        dto.setBrands(brandDTOs);

        return dto;
    }

	
	private CategoryWithProductsDTO transformToCategoryWithProductsDTO(Category category) {
        CategoryWithProductsDTO dto = new CategoryWithProductsDTO();
        dto.setCategoryId(category.getCategoryId());
        dto.setCategoryTitle(category.getCategoryTitle());

        List<ProductDTO> productDTOs = new ArrayList<>();
        for (Product product : category.getCatProds()) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setProductId(product.getProductId());
            productDTO.setProductTitle(product.getProductTitle());
            productDTO.setPrice(product.getPrice().getPrice());
            productDTOs.add(productDTO);
        }
        dto.setProducts(productDTOs);

        return dto;
    }

}
