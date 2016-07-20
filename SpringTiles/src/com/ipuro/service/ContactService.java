package com.ipuro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ipuro.dao.ContactDao;

import com.ipuro.model.Contactform;

public class ContactService
{
@Autowired 
ContactDao contactdao;
public void contactdata(Contactform contactform) 
{
	 
	contactdao.contactdata(contactform);
}
public List<Contactform> ViewQueries() 
{
	List<Contactform> list=contactdao.ViewQueries();
	return list;
}

}
