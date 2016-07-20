package com.ipuro.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.ProductDao;
import com.ipuro.model.Category;
import com.ipuro.model.Product;
import com.ipuro.model.ShoppingCart;

public class ProductService 
{
	@Autowired
ProductDao productDao;
	public List<Category> AddProduct() 
	{
		List<Category> list=productDao.AddProduct();
		return list;
	}
	public void setproduct(Product product) 
	{
		productDao.setproduct(product);
		
	}
	public List<Product> ViewProductOfCategory(String catProduct) 
	{
		List<Product> list=productDao.ViewProductOfcategory(catProduct);
		return list;
	}
	public void deletById(int id) 
	{
		productDao.deletById(id);
		
	}
	public Product getproduct(int id) 
	{
	Product product=productDao.getproduct(id);
	return product;
		
	}
	public List<Product> viewProductByCategory(String categoryName) 
	{
		
		List<Product> product=productDao.viewProductByCategory(categoryName);
		return product;
	}
	public void setShoppingCart(ShoppingCart shoppingCart,HttpSession session) 
	{
		productDao.setShoppingCart(shoppingCart,session);
		
	}
	public List<Product> ViewProduct() 
	{
		List<Product> product=productDao.ViewProduct();
		return product;
	}
	

}
