package com.ipuro.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Category;
import com.ipuro.model.Product;
import com.ipuro.model.ShoppingCart;


public class ProductDao 
{
@Autowired
SessionFactory sessionFactory;
@Autowired
ShoppingCartDao shoppingCartDao;
@Transactional
	public List<Category> AddProduct() 
	{
	
	Session session=sessionFactory.getCurrentSession();
	List<Category> list=(List<Category>)session.createCriteria(Category.class).list();
	
	return list;	
		
	}
@Transactional
public void setproduct(Product product) 
{
	sessionFactory.getCurrentSession().save(product);
	
}
@Transactional
public List<Product> ViewProduct() 
{
	Session session=sessionFactory.getCurrentSession();
	
	List<Product> product=(List<Product>)session.createCriteria(Product.class).list();
	
	return product;
	
}

@Transactional
public void deletById(int id) 
{
	Session session=sessionFactory.getCurrentSession();
	Product pro=(Product) session.get(Product.class, id);
	session.delete(pro);
	
}
@Transactional
public Product getproduct(int id)
{
	Session session=sessionFactory.getCurrentSession();
	Product product=(Product) session.get(Product.class,id);
	return product;
	
}
@Transactional
public List<Product> viewProductByCategory(String categoryName) 
{
	Session session=sessionFactory.getCurrentSession();
	List<Product> product=session.createQuery("From Product where categoryname='"+categoryName+"'").list();
	return product;
}


@Transactional
public void setShoppingCart(ShoppingCart shoppingCart,HttpSession session) 
{
	sessionFactory.getCurrentSession().save(shoppingCart);	
	shoppingCartDao.updateItem(shoppingCart.getUserid(),session);
}



@Transactional
public List<Product> ViewProductOfcategory(String catProduct) 
{
	Session session=sessionFactory.getCurrentSession();
	List<Product> product=session.createQuery("From Product where categoryname='"+catProduct+"'").list();
	return product;
}

}
