package com.niit.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
	
private int id;
private String categoryname;
@OneToMany(mappedBy="category")
private List<Product> products;
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}
public int getId() {
	return id;
}
public void setId(int id) {
	System.out.println("setter method in category for the property id");
	this.id = id;
}
public String getCategoryname() {
	return categoryname;
}
public void setCategoryname(String categoryname) {
	this.categoryname = categoryname;
}


}
