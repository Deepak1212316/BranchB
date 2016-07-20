package com.ipuro.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Category;
import com.ipuro.model.Newsletter;

public class NewsletterDao 

{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public void newsletterdata(Newsletter newsletter) 
	
	{
		sessionFactory.getCurrentSession().save(newsletter);
		
	}
	@Transactional
	public List<Newsletter> Viewsubscriber() 
	{
		Session session=sessionFactory.getCurrentSession();
		List<Newsletter> list=(List<Newsletter>)session.createCriteria(Newsletter.class).list();
		return list;
	}
	

}
