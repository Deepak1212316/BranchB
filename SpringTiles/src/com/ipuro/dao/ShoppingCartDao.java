package com.ipuro.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Category;
import com.ipuro.model.Order;
import com.ipuro.model.Product;
import com.ipuro.model.ShoppingCart;
import com.ipuro.model.User;

public class ShoppingCartDao 
{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<ShoppingCart> checkOut(String userid) 
	{
		Session session=sessionFactory.getCurrentSession();
		List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid+"'").list();
		
		return list;
		
	}
	@Transactional
	public void removeItem(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		ShoppingCart shoppingCart=(ShoppingCart) session.get(ShoppingCart.class,id);
		session.delete(shoppingCart);	
		
	}
	@Transactional
	public void updateTempField(String userid) 
	{
		Session session=sessionFactory.getCurrentSession();
		/*ShoppingCart shoppingCart=(ShoppingCart) session.get(ShoppingCart.class,tempfield);*/
			
		
		
	}
	@Transactional
	public List<ShoppingCart> remove() 
	{
		Session session=sessionFactory.getCurrentSession();
		List<ShoppingCart> list=(List<ShoppingCart>)session.createCriteria(ShoppingCart.class).list();
		return list;
		
	}
	@Transactional
	public List<ShoppingCart> getfinalorder(String userid) 
	{
		Session session=sessionFactory.getCurrentSession();
		List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid+"'").list();
		return list;
		
	}
	@Transactional
	public User getuser(String userid) 
	{
		Session session=sessionFactory.getCurrentSession();
		/*List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid+"'");*/
		User user=(User) session.get(User.class,userid);
		return user;
		
	}
	@Transactional
	public void setfinalorder(Order order) 
	{
		sessionFactory.getCurrentSession().save(order);
	}
	@Transactional
	public void flushTempTable(String userid) 
	{
		Session session=sessionFactory.getCurrentSession();
		List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid+"'").list();
		for(ShoppingCart shoppingCart:list)
		{
			session.delete(shoppingCart);
			
		}
	}
	@Transactional
	public void updateInc(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		ShoppingCart shoppingCart=(ShoppingCart) session.get(ShoppingCart.class,id);
		shoppingCart.setQuantity(shoppingCart.getQuantity()+1);
		session.update(shoppingCart);
		
		
	}
	@Transactional
	public void updatedec(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		ShoppingCart shoppingCart=(ShoppingCart) session.get(ShoppingCart.class,id);
		if(shoppingCart.getQuantity()==1)
		{
			shoppingCart.setQuantity(shoppingCart.getQuantity());
			
		}
		else 
		{
			shoppingCart.setQuantity(shoppingCart.getQuantity()-1);	
		}
		
		session.update(shoppingCart);
		
	}
	
	@Transactional
	public void updateItem(String userid,HttpSession sess) 
	{	int item = 0;
		float total = 0;
		
		Session session=sessionFactory.getCurrentSession();
		List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid+"'").list();
		for(ShoppingCart shoppingCart:list)
		{
			item+=shoppingCart.getQuantity();
			total+=shoppingCart.getQuantity()*shoppingCart.getPrice();
		}
		System.out.println(item);
		System.out.println(total);
		sess.setAttribute("item", item);
		sess.setAttribute("total", total);
		
		
		
	}

}
