package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.models.CartItem;
import com.niit.models.CustomerOrder;
import com.niit.models.User;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	private CartItemDao cartItemDao;
	public void addToCart(CartItem cartItem) {
		cartItemDao.addToCart(cartItem);
		
	}
	public User getUser(String email) {
		return cartItemDao.getUser(email);
	}
	public List<CartItem> getCart(String email) {
		
		return cartItemDao.getCart(email);
	}
	public void removeCartItem(int cartItemId) {
		cartItemDao.removeCartItem(cartItemId);
	}
	
	public void createCustomerOrder(CustomerOrder customerOrder) {
		cartItemDao.createCustomerOrder(customerOrder);
		
	}
	

}
