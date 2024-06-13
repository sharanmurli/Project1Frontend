package com.niit.dao;

import com.niit.models.Customer;
import com.niit.models.User;

public interface CustomerDao {
	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);
	User getUser(String email);

}
