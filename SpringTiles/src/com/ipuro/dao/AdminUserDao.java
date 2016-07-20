package com.ipuro.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.AdminUser;

public class AdminUserDao
{
	@Autowired
SessionFactory sessionFactory;
@Transactional
public AdminUser formdata(String str) 
	{
	Session session=sessionFactory.getCurrentSession();
	
	AdminUser admin=(AdminUser)session.get(AdminUser.class, str);
	
		return admin;
	}

}
