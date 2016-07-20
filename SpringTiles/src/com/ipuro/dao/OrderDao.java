package com.ipuro.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Order;
import com.ipuro.model.ShoppingCart;

public class OrderDao 
{
	@Autowired SessionFactory sessionFactory;
	@Transactional
	public List<Order> ViewOrder() 
	{
		Session session=sessionFactory.getCurrentSession();
		List<Order> list=(List<Order>)session.createCriteria(Order.class).list();
		return list;
		
	}
	@Transactional
	public void deleteOrder_by_id(int orderId) 
	{
		Session session=sessionFactory.getCurrentSession();
		Order order=(Order) session.get(Order.class,orderId);
		session.delete(order);	
		
	}
	@Transactional
	public Order printOrder_by_id(int orderId) 
	{
		Session session=sessionFactory.getCurrentSession();
		Order order=(Order) session.get(Order.class,orderId);
		return order;
	}

}
