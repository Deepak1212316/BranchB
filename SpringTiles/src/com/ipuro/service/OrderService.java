package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.OrderDao;
import com.ipuro.model.Order;

public class OrderService 
{
	@Autowired
	OrderDao orderDao;
	public List<Order> ViewOrder() 
	{
		List<Order> list=orderDao.ViewOrder();
		return list;
	}
	
	
	public void deleteOrder_by_id(int orderId) 
	{
		orderDao.deleteOrder_by_id(orderId);
		
	}
	
	
	public Order printOrder_by_id(int orderId) 
	{
		
	Order order=orderDao.printOrder_by_id(orderId);
		return order;
	}

}
