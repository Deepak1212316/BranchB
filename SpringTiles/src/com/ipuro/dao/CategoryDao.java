package com.ipuro.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ipuro.model.Category;
import com.ipuro.model.User;

public class CategoryDao 
{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public void categorydata(Category category) 
	{
		sessionFactory.getCurrentSession().save(category);
		
	}
	@Transactional
	public List<Category> ViewCategory() 
	{

		Session session=sessionFactory.getCurrentSession();
		List<Category> list=(List<Category>)session.createCriteria(Category.class).list();
		return list;
		
	}
	@Transactional
	public void categoryid(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		Category cate=(Category) session.get(Category.class,id);
		session.delete(cate);	
		
	}

	/*Session session=sessionFactory.getCurrentSession();
	List<User> list=(List<User>)session.createCriteria(User.class).list();
	return list;
	
}
@Transactional
public void deletById(String userid)
{
	Session session=sessionFactory.getCurrentSession();
	User use=(User) session.get(User.class, userid);
	session.delete(use);
	
}*/
}
