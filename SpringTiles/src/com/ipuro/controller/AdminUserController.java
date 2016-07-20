package com.ipuro.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ipuro.model.AdminUser;
import com.ipuro.service.AdminUserService;

@Controller
public class AdminUserController 
{	@Autowired
	AdminUserService adminUserService;

	@RequestMapping("adminLogin.html")
	String toadminloginform(ModelMap map )
	{	
		map.addAttribute("adminlogincontainer");
		return "adminLogin";
		
	}


	@RequestMapping("formdata.html")
	ModelAndView formdata(@ModelAttribute("adminlogincontainer")AdminUser adminUser,HttpSession session)
	{
	String	str=adminUser.getAdminId();
	String pass=adminUser.getPassword();
	AdminUser admin=adminUserService.formdata(str);
	if(admin==null)
	{
		return new ModelAndView("redirect:adminLogin.html");
		
	}
	if(admin.getPassword().equals(pass))
	{
		
		session.setAttribute("adminId", admin.getAdminId());
		return new ModelAndView("redirect:adminHome.html");
	}
	/*if(admin==null)
	{
		return new ModelAndView("redirect:adminLogin.html");
		
	}*/
	else
	{
		/*session.setAttribute("adminId", admin.getAdminId());
		return new ModelAndView("redirect:adminHome.html");*/
		return new ModelAndView("redirect:adminLogin.html");
	}
	}
	
	@RequestMapping("adminHome.html")
	ModelAndView adminHome(@ModelAttribute("adminlogincontainer")AdminUser adminUser,HttpSession session)
	{
		return new ModelAndView("adminHome");
	}	 

}
