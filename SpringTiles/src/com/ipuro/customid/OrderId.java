package com.ipuro.customid;
import java.io.Serializable;

import java.util.List;

import javax.persistence.Entity;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.ContextLoaderListener;

@Entity
public class OrderId implements IdentifierGenerator{

	private SessionFactory sessionFactory = null;
	 Session session=null;
	
	
     @Transactional
	  public Serializable generate(SessionImplementor si, Object obj) throws HibernateException 
	  {
	  ApplicationContext c =  ContextLoaderListener.getCurrentWebApplicationContext();
	  sessionFactory = (SessionFactory) c.getBean("sessionFactory");
	  String sid="OR001";
	  try
	  {
	    String retrieveQuery1="select max(rollNO) from Order";
	    session =sessionFactory.openSession();
	    Query q1=session.createQuery(retrieveQuery1);
	    List<String> pid=q1.list();
	    if(pid!=null){
	    int x = Integer.parseInt(pid.get(0).substring(2))+1;
	    
	    	if(x<=9){
    		sid="OR00"+x;
	    	}
	    	else if(x<=99){
    		sid="OR0"+x;
	    	}	 
	    	else if(x<=999){
    		sid="OR"+x;
	    	}
	    }
	  }
	  catch (Exception e) {
	  e.printStackTrace();
	  }
	  return sid;
  }
}




