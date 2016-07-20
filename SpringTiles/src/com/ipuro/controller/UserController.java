package com.ipuro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.ipuro.dao.ShoppingCartDao;
import com.ipuro.model.Product;
import com.ipuro.model.User;
import com.ipuro.service.ProductService;
import com.ipuro.service.UserService;

@Controller
public class UserController
{
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@Autowired
	ShoppingCartDao shoppingCartDao;
	
	
	@RequestMapping("signUp.html")
	String signUp(ModelMap map)
	{
		map.addAttribute("container");
		return "UserRegistration";
		
	}
	
	
	
	
	@RequestMapping("register.html")
	ModelAndView setdata(@ModelAttribute("container")User user)
	{	String emailcheck=user.getEmail();
		String msg=	userService.setdata(user);
		if(msg==null)
		{
			return new ModelAndView("UserRegistration","msg",msg);
			
			
		}
		else
		{
			return new ModelAndView("login","message","thank you for registration <br>please Now login to purchase");
			
		}
		
	}
	
	
	@RequestMapping("logout.html")
	ModelAndView logout(HttpServletRequest request)
	{	
		HttpSession session=request.getSession();
		session.invalidate();
		/*List<Product> list=productService.ViewProduct();
		return new ModelAndView("home","pr",list);*/
		return new ModelAndView("redirect:home.html");
				
		
	}
	
	
	@RequestMapping("delete_by_userid.html")
	ModelAndView delete_by_userid(HttpServletRequest request)
	{	

		String userid=request.getQueryString();
		userService.deletById(userid);
		return new ModelAndView("redirect:ViewUsers.html");
		
	}
	
	
	@RequestMapping("login_or_register.html")
	ModelAndView login_or_register(ModelMap map)
	{	
		map.addAttribute("loginformcomtainer");
		return new ModelAndView("login");
	}
	@RequestMapping("loginformdata.html")
	ModelAndView userlogin(HttpServletRequest request,HttpSession session)
	{		
			
		String userid=request.getParameter("userid");		
		User user=userService.validate(userid);	
		if(user==null)
		{
			return new ModelAndView("login","msg","Sorry, Either user Id or password is wrong");
			
		}
		
		if(user.getPassword().equals(request.getParameter("password")))
		{
			
			String userid1=user.getUserid();
			userService.flushOldData(userid1);
			//to update item in the topheader
			shoppingCartDao.updateItem(userid1,session);
			session.setAttribute("user", user);
			session.setAttribute("userid", userid1);
			return new ModelAndView("redirect:home.html");
			
		}
		
		
		else
		{
			return new ModelAndView("login","msg","Sorry, Either user Id or password is worng");
		}
	}
	
	@RequestMapping("aboutus.html")
	public String aboutus()
	{
		return "aboutus";
	}
	@RequestMapping("WhyOrganic.html")
	public String Whyorganic()
	{
		return "WhyOrganic";
	}
	@RequestMapping("PrivacyPolicy.html")
	public String PrivacyPolicy()
	{
		return "PrivacyPolicy";
	}
	@RequestMapping("TOS.html")
	public String Tos()
	{
		return "TermsAndConditions";
	}
	@RequestMapping("FAQ.html")
	public String faq()
	{
		return "FAQ";
	}
	
	@RequestMapping("shippinginformation.html")
	public String shippinginfo()
	{
		return "shippinginformation";
	}
	@RequestMapping("shippingInf.html")
	public String shippingInf()
	{
		return "shippingAddress";
	}
	@RequestMapping("facebook.html")
	public String facebook()
	{
		return "redirect:http://www.facebook.com";
	}
	@RequestMapping("twitter.html")
	public String twitter()
	{
		return "redirect:http://www.twitter.com";
	}
	@RequestMapping("rss.html")
	public String rss()
	{
		return "redirect:http://feeds.feedburner.com/~u/15579825078739845209";
	}
	@RequestMapping("changeAddress.html")
	public String changeAddress(ModelMap map)
	{
		map.addAttribute("addresscontainer");
		return "changshippingAddress";
	}
	
	
	@RequestMapping("changedShippingAddress.html")
	public ModelAndView changedShippingAddress(@ModelAttribute("addresscontainer")User user1,HttpSession session)
	{
		String userid=(String)session.getAttribute("userid");
		userService.changedShippingAddress(user1,userid);
		User user=userService.validate(userid);
		session.setAttribute("user", user);
		return new ModelAndView("redirect:shippingInf.html");
	}
	@RequestMapping("updateprofile.html")
	public String updateprofile(ModelMap map)
	{
		map.addAttribute("profilecontainer");
		return "updateProfile";
	}
	
	@RequestMapping("updatingprofile.html")
	public ModelAndView updatingprofile(@ModelAttribute("profilecontainer")User user1,HttpSession session)
	{
		String userid=(String)session.getAttribute("userid");
		userService.updatingprofile(user1,userid);
		User user=userService.validate(userid);
		session.setAttribute("user", user);
		return new ModelAndView("updateProfile","msg","Your profile is updated");
	}
	
	

}
