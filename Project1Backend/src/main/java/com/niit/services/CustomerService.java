package com.niit.services;

import com.niit.models.Customer;
import com.niit.models.User;

public interface CustomerService {
	void registerCustomer(Customer customer);

	boolean isEmailUnique(String email);
	public User getUser(String email);

}
