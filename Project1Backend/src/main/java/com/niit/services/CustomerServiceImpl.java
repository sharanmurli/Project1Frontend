package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.models.Customer;
import com.niit.models.User;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;

	public void registerCustomer(Customer customer) {
		customerDao.registerCustomer(customer);
	

	}
	public boolean isEmailUnique(String email) {
		return customerDao.isEmailUnique(email);
	}
	public User getUser(String email) {
		return customerDao.getUser(email);
	}

}
