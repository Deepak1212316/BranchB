package com.ipuro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ipuro.model.Category;
import com.ipuro.service.CategoryService;
@Controller
public class CategoryController 
{	@Autowired
	CategoryService categoryService;	
	@RequestMapping("AddCategory.html")
	
	String toAddCategoryForm(ModelMap map)
	{	
		map.addAttribute("categorycontainer");
		return "category";		
	}	
	@RequestMapping("categoryform.html")
	ModelAndView categorydata(@ModelAttribute("categorycontainer")Category category)
	{	
		categoryService.categorydata(category);
		return new ModelAndView("category","message","Category is added");
		
	}
	
	@RequestMapping("ViewCategory.html")
	ModelAndView ViewCategory()
	{
		List<Category> list=categoryService.ViewCategory();
		return new ModelAndView("viewCategory","list",list);
	}
	
	@RequestMapping("click.html")
	ModelAndView CategoryOnHeader()
	{
		List<Category> list=categoryService.ViewCategory();
		return new ModelAndView("header","list",list);
	}
	
	
	@RequestMapping("delete_by_categoryid.html")
	ModelAndView delete_by_categoryid(HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getQueryString());
		categoryService.categoryid(id);
		return new ModelAndView("redirect:ViewCategory.html");
	}
	
}




