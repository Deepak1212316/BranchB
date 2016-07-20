package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.UserDao;

import com.ipuro.model.User;

public class UserService 
{
	@Autowired
	UserDao userDao;
	public String setdata(User user) 
	{
	String msg=	userDao.setdata(user); 
		return msg;
	}
	public List<User> ViewUsers() 
	{
		List<User> list=userDao.ViewUsers();
		return list;
	}
	public void deletById(String userid) 
	{
		userDao.deletById(userid);
		
	}
	
	public User validate(String userid) 
	{
	User user=	userDao.validate(userid);
		return user;
	}
	public void flushOldData(String userid1) 
	{
		userDao.flushOldData(userid1);
		
	}
	
	public void changedShippingAddress(User user, String userid) 
	{
		
		userDao.changedShippingAddress(user,userid);
	}
	public void updatingprofile(User user, String userid) 
	{
		
		userDao.changedShippingAddress(user,userid);
	}

}
