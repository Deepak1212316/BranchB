package com.ipuro.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.AdminUserDao;
import com.ipuro.model.AdminUser;

public class AdminUserService 
{	@Autowired
	AdminUserDao adminUserDao;

	public AdminUser formdata(String str) 
	{
	AdminUser admin= adminUserDao.formdata(str);
	return admin;
	}

}
