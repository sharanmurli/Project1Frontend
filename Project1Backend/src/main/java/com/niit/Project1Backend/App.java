package com.niit.Project1Backend;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Product;
import com.niit.services.ProductService;
import com.niit.services.ProductServiceImpl;


public class App 
{
    public static void main( String[] args )
    {
      ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class);
      ProductService productService=(ProductService)context.getBean("productServiceImpl");
       ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
    	//Product product=new Product();
    	//product.setProductname("Car");
    	//product.setProductdesc("Mahindra Marrazzo");
    	//product.setPrice(100000);
    	// product.setQuantity(2);
    	 
    	
    	 Product product =productService.getProduct(2);
    	 product.setProductname("Toy Car");
    	 productService.updateProduct(product);
    	 
    	//if(product!=null){
    		//System.out.println(product.getPrice());
    		//System.out.println(product.getQuantity());
    		//System.out.println(product.getId());
    		
    	//}
    	
    	
      //List<Product>products=productService.getAllProducts();
      //for(Product p:products) {
    	  //System.out.println(p.getId()+"::"+p.getProductdesc()+"::"+p.getProductname()+"::"+p.getQuantity()+"::"+p.getPrice());
      //}
    	
       
    }
}
