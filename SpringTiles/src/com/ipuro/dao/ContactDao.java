package com.ipuro.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Contactform;

public class ContactDao 
{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public void contactdata(Contactform contactform)
	{
		sessionFactory.getCurrentSession().save(contactform);
		
	}
	@Transactional
	public List<Contactform> ViewQueries() 
	{

		Session session=sessionFactory.getCurrentSession();
		List<Contactform> list=(List<Contactform>)session.createCriteria(Contactform.class).list();
		return list;
		
	}
}
