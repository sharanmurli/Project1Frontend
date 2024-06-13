package com.niit.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.models.CartItem;
import com.niit.models.Product;
import com.niit.models.User;
import com.niit.services.CustomerService;
import com.niit.services.ProductService;

import junit.framework.TestCase;

public class CartItemDaoImplTest extends TestCase{
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,CartItemDaoImpl.class);
	CartItemDao cartItemDao=(CartItemDao)context.getBean("cartItemDaoImpl");
	//@Autowired
	private ProductService productService;
	//@Autowired
	private CustomerService customerService;

	@Test
	public void testaddToCart() {
		CartItem cartItem=new CartItem();
		Product product=new Product();
		product=productService.getProduct(33);
		cartItem.setProduct(product);
		User user=new User();
		user=customerService.getUser("shristi@onfees.com");
		cartItem.setQuantity(1);
		cartItem.setUser(user);
		cartItem.setTotalPrice(390);
		
		cartItemDao.addToCart(cartItem);
		assertTrue(cartItem.getCartItemId()>0);
	}

}
