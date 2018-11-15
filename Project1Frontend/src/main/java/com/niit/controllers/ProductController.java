package com.niit.controllers;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.models.Category;
import com.niit.models.Product;
import com.niit.services.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	public ProductController() {
		System.out.println("ProductController Bean is Created");
	}
	@RequestMapping(value="/all/getallproducts")
	public String getAllProducts(Model model,HttpSession session) {
		List<Product>products=productService.getAllProducts();
		model.addAttribute("products",products);
		session.setAttribute("categories",productService.getAllCategories());
		
		return "listofproducts";
		
	}
	@RequestMapping(value="/all/getproduct")
	public String getProduct(@RequestParam int id,Model model) {
		Product product=productService.getProduct(id);
		model.addAttribute("productAttr",product);
		return "viewproduct";
		
	}
	@RequestMapping(value="/admin/deleteproduct")
	public String deleteProduct(@RequestParam int id) {
		productService.deleteProduct(id);
	return "redirect:/all/getallproducts";
		
	}
	@RequestMapping(value="/admin/getproductform")
	public String getProductForm(Model model) {
		Product p=new Product();
		model.addAttribute("product",p);
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories", categories);
		return "productform";
		
	}
	@RequestMapping(value="/admin/addproduct")
	public String addProduct(@Valid @ModelAttribute Product product, BindingResult result,Model model,HttpServletRequest request) {
		if(result.hasErrors()) {
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories", categories);
			return "productform";
		}
		productService.addProduct(product);
		MultipartFile img=product.getImage();
		
		System.out.println(request.getServletContext().getRealPath("/"));
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resoueces/images/"+product.getId());
		
		try {
			if(img!=null && !img.isEmpty()) {
			File file=new File(path.toString());
			img.transferTo(file);
			}
		}
		
			catch(IllegalStateException e) {
			e.printStackTrace();
			}
		catch(IOException e) {
				e.printStackTrace();
				
			}
		
		return "redirect:/all/getallproducts";
		
	}
	@RequestMapping(value="/admin/getupdateproductform")
	public String getUpdateProductForm(@RequestParam int id,Model model ) {
		Product product=productService.getProduct(id);
		model.addAttribute("product",product );
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories", categories);
		return "updateproductform";
		
	}
	@RequestMapping(value="/admin/updateproduct")
	public String updateProduct(@Valid @ModelAttribute Product product, BindingResult result,Model model,HttpServletRequest request) {
		if(result.hasErrors()) {
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories", categories);
			return "updateproductform";
		}
		
		productService.updateProduct(product);
MultipartFile img=product.getImage();
        System.out.println(img);
		
		System.out.println(request.getServletContext().getRealPath("/"));
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId());
		
		try {
			if(img!=null && !img.isEmpty()) {
				File file=new File(path.toString());
				
				img.transferTo(file);
				}
			
			
		}
		
			catch(IllegalStateException e) {
			e.printStackTrace();
			}
		catch(IOException e) {
				e.printStackTrace();
				
			}
		
		return "redirect:/all/getallproducts" ;
		
	}
	@RequestMapping(value="/all/searchByCategory")
	public String searchByCategory(@RequestParam String searchCondition,Model model) {
		if(searchCondition.equals("All"))
			model.addAttribute("searchCondition","");
		else
			model.addAttribute("searchCondition", searchCondition);
			model.addAttribute("products",productService.getAllProducts());
		return "listofproducts";
		
	}
	

}
