package com.niit.services;


import java.util.List;

import com.niit.models.CartItem;
import com.niit.models.CustomerOrder;
import com.niit.models.User;

public interface CartItemService {
	void addToCart(CartItem cartItem);
	User getUser(String email);
	List<CartItem> getCart(String email);
	void removeCartItem(int cartItemId);
	void createCustomerOrder(CustomerOrder customerOrder);
	
	
	

}
