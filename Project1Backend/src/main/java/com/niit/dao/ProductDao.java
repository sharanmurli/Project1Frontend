package com.niit.dao;

import java.util.List;

import com.niit.models.Category;
import com.niit.models.Product;

public interface ProductDao {
	 void addProduct(Product product);
	 void updateProduct(Product product);
	 Product getProduct(int id);
	 void deleteProduct(int id);
	 List<Product> getAllProducts();
	List<Category> getAllCategories();
	

	



	
	

}
