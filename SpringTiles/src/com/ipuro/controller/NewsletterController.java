package com.ipuro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ipuro.model.Category;
import com.ipuro.model.Newsletter;
import com.ipuro.service.NewsletterService;


@Controller
public class NewsletterController
{
	
	@Autowired
NewsletterService newsletterService;
	@RequestMapping("newsletter.html")
	ModelAndView newsletterdata(@ModelAttribute("newslettercontainer")Newsletter newsletter)
	{	
		newsletterService.newsletterdata(newsletter);
		return new ModelAndView("redirect:home.html");
		
	}
	
	@RequestMapping("Viewsubscriber.html")
	ModelAndView ViewCategory()
	{
		List<Newsletter> list=newsletterService.Viewsubscriber();
		return new ModelAndView("Viewsubscriber","list",list);
	}
}
