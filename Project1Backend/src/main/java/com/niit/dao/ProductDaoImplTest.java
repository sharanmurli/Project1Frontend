package com.niit.dao;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.models.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
	ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
	public void testAddProduct() {
		//Product p=new Product();
		//p.setProductname("Laptop");
		//p.setProductdesc("Dell 5575 AMD Ryzen");
		//p.setPrice(37000);
		//p.setQuantity(10);
		//productDao.addProduct(p);
		//assertTrue(p.getId()>0);
		
	}

	//@Ignore
	@Test
	public void testUpdateProduct() {
		Product product=productDao.getProduct(2);
		product.setPrice(30000);
		productDao.updateProduct(product);
		assertTrue(product.getPrice()==30000);
		
	}

	public void testGetProduct() {
		Product actualProduct1=productDao.getProduct(5);
		Product actualProduct2=productDao.getProduct(50);
		assertNotNull(actualProduct1);
		assertNull(actualProduct2);
		
	}

	public void testDeleteProduct() {
		productDao.deleteProduct(37);
		Product product=productDao.getProduct(37);
		assertNull(product);
	}

	public void testGetAllProducts() {
		List<Product>products=productDao.getAllProducts();
		assertFalse(products.isEmpty());
		assertTrue(products.size()==6);
		
	}

}
