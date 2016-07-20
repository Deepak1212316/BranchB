package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.CategoryDao;
import com.ipuro.model.Category;

public class CategoryService 
{
	@Autowired
	CategoryDao categoryDao;
	public void categorydata(Category category) 
	{
		 
		categoryDao.categorydata(category);
	}
	public List<Category> ViewCategory() 
	{
		List<Category> list=categoryDao.ViewCategory();
		return list;
	}
	public void categoryid(int id) 
	{
		categoryDao.categoryid(id); 
		
	}

}
