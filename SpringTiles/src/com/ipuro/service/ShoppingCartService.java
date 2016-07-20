package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.ShoppingCartDao;
import com.ipuro.model.Order;
import com.ipuro.model.ShoppingCart;
import com.ipuro.model.User;

public class ShoppingCartService 
{
	@Autowired
	ShoppingCartDao shoppingCartDao;

	public List<ShoppingCart> checkOut(String userid) 
	{
		List<ShoppingCart> list=shoppingCartDao.checkOut(userid);
		return list;
	}

	public void removeItem(int id) 
	{
		shoppingCartDao.removeItem(id);
		
	}

	public void updateTempField(String userid) 
	{
		shoppingCartDao.updateTempField(userid);
		
	}

	public List<ShoppingCart> remove() 
	{
		List<ShoppingCart> list=shoppingCartDao.remove();
		return list;
	}

	public List<ShoppingCart> getfinalorder(String userid) 
	{
		List<ShoppingCart> list=shoppingCartDao.getfinalorder(userid) ;
		return list;
	}

	public User getuser(String userid) 
	{
		User list=(User)shoppingCartDao.getuser(userid);
		return list;
		
	}

	public void setfinalorder(Order order) 
	{
		shoppingCartDao.setfinalorder(order);
		
	}

	public void flushTempTable(String userid) 
	{
		
		shoppingCartDao.flushTempTable(userid);
	}

	public void updateInc(int id) 
	{
		shoppingCartDao.updateInc(id);
		
	}

	public void updatedec(int id) 
	{
		shoppingCartDao.updatedec(id);
		
	}

	

}
