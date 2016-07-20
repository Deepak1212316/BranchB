package com.ipuro.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;


import com.ipuro.model.Product;
import com.ipuro.model.ShoppingCart;
import com.ipuro.model.User;

public class UserDao 
{
	@Autowired
SessionFactory sessionFactory;
@Transactional
	public String setdata(User user) 
	{	
	String userid=	user.getUserid();
	User use=(User) sessionFactory.getCurrentSession().get(User.class, userid);
	if(use==null)
	{	
		sessionFactory.getCurrentSession().save(user);
		return null;
	}
	else
	{
		return "This User Id allready exist.<br> Please try Another.";
	}
	}
@Transactional
public List<User> ViewUsers() 
{
	Session session=sessionFactory.getCurrentSession();
	List<User> list=(List<User>)session.createCriteria(User.class).list();
	return list;
	
}
@Transactional
public void deletById(String userid)
{
	Session session=sessionFactory.getCurrentSession();
	User use=(User) session.get(User.class, userid);
	session.delete(use);
	
}

@Transactional
public User validate(String userid) 
{
	Session session=sessionFactory.getCurrentSession();
	User user=(User) session.get(User.class, userid);
	
	return user;
}
@Transactional
public void flushOldData(String userid1) 
{
	Session session=sessionFactory.getCurrentSession();
	/*List<ShoppingCart> list=(List<ShoppingCart>)session.createCriteria(ShoppingCart.class).list();*/
	List<ShoppingCart> list=session.createQuery("From ShoppingCart where userid='"+userid1+"'").list();
	for(ShoppingCart shoppingCart:list)
	{
		session.delete(shoppingCart);
		
	}
}
@Transactional
public void changedShippingAddress(User user, String userid) 
{
	Session session=sessionFactory.getCurrentSession();
	User user2=(User) session.get(User.class,userid);
	user2.setAddress(user.getAddress());
	user2.setCity(user.getCity());
	user2.setState(user.getState());
	user2.setZip(user.getZip());
	session.update(user2);
	
}
@Transactional
public void updatingprofile(User user, String userid) 
{
	Session session=sessionFactory.getCurrentSession();
	User user2=(User) session.get(User.class,userid);
	user2.setEmail(user.getEmail());
	user2.setPassword(user.getPassword());
	user2.setAddress(user.getAddress());
	user2.setZip(user.getZip());
	user2.setCity(user.getCity());
	user2.setState(user.getState());
	session.update(user2);
	
}


}
