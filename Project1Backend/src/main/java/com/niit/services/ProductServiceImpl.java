package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.models.Category;
import com.niit.models.Product;
@Service
public class ProductServiceImpl  implements ProductService{
	@Autowired
	private ProductDao productDao;
	 
	public ProductServiceImpl() {
		System.out.println("ProductServiceImpl bean is created");
		
	}
	public void addProduct(Product product) {
		productDao.addProduct(product);
		
	}
	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}
	public Product getProduct(int id){
		return productDao.getProduct(id);
		
	}
	
	public void deleteProduct(int id) {
		
		productDao.deleteProduct(id);
		
	}
	public List<Product> getAllProducts() {
		
		return productDao.getAllProducts();
	}
	public List<Category> getAllCategories() {
		return productDao.getAllCategories();
	}
	

}
