package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.NewsletterDao;

import com.ipuro.model.Newsletter;

public class NewsletterService 

{
	@Autowired
	NewsletterDao newsletterDao;
	public void newsletterdata(Newsletter newsletter) 
	{
	
		newsletterDao.newsletterdata(newsletter);
		
	}
	public List<Newsletter> Viewsubscriber() 
	{
		List<Newsletter> list=newsletterDao.Viewsubscriber();
		return list;
	}

}
