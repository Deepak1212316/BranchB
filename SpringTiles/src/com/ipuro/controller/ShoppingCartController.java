package com.ipuro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ipuro.dao.ShoppingCartDao;
import com.ipuro.model.Order;
import com.ipuro.model.ShoppingCart;
import com.ipuro.model.User;
import com.ipuro.service.ShoppingCartService;

@Controller
public class ShoppingCartController 
{
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	ShoppingCartDao shoppingCartDao;
	
	
	@RequestMapping("removeItem.html")
	ModelAndView removeItem(HttpServletRequest request,HttpSession session,ModelMap map)
	{
		/*int id=Integer.parseInt(request.getQueryString());*/
		int id=Integer.parseInt(request.getParameter("a"));
		String userid=request.getParameter("b");		
		shoppingCartService.removeItem(id);
		//to update item in the topheader
		shoppingCartDao.updateItem(userid,session);
		List<ShoppingCart> list=shoppingCartService.checkOut(userid);
		if(list.size()==0)
		{
			System.out.println("hello");
		map.addAttribute("msg","you do not have any product in the cart");
		return new ModelAndView("checkOut");
		}
		return new ModelAndView("redirect:checkOut.html?"+userid);
	}
	
	@RequestMapping("putorder.html")
	ModelAndView proceedorder(HttpServletRequest request,HttpSession session)
	{
		String userid=request.getQueryString();
		List<ShoppingCart> list1=shoppingCartService.getfinalorder(userid);
		User user=shoppingCartService.getuser(userid);
		
		for(ShoppingCart shoppingCart:list1)
		{
			Order order=new Order();
			order.setAddress(user.getAddress());
			order.setCity(user.getCity());
			order.setCustname(user.getName());
			order.setEmail(user.getEmail());
			order.setItemname(shoppingCart.getItem());
			order.setPhone(user.getPhone());
			order.setPrice(shoppingCart.getPrice());
			order.setQuantity(shoppingCart.getQuantity());
			order.setState(user.getState());
			order.setZip(user.getZip());
			shoppingCartService.setfinalorder(order);		
			
		}
		/*session.setAttribute("list", list1);*/
		shoppingCartService.flushTempTable(userid);
		//to update item in the topheader
		shoppingCartDao.updateItem(userid,session);
		return new ModelAndView("shoppingsucess","message","thank you<br> your product will be send to your home within three days");
	}
	
	
	
	
	@RequestMapping("inc.html")
	ModelAndView incQuantity(HttpServletRequest request ,HttpSession session)
	{
		int id=Integer.parseInt(request.getParameter("a"));
		String userid=request.getParameter("b");		
		shoppingCartService.updateInc(id);
		//to update item in the topheader
		shoppingCartDao.updateItem(userid,session);
				
		return new ModelAndView("redirect:checkOut.html?"+userid);
	}
	
	@RequestMapping("checkOut.html")
	ModelAndView checkOut(HttpServletRequest request,HttpSession session,ModelMap map)
	{	
		
		
		String userid=request.getQueryString();
		List<ShoppingCart> list=shoppingCartService.checkOut(userid);
		if(list.size()==0)
		{
		map.addAttribute("msg","you do not have any product in the cart");
		return new ModelAndView("checkOut");
		}
		return new ModelAndView("checkOut","list",list);
		
	}
	/*@RequestMapping("checkOut.html")
	ModelAndView incQuanti(HttpServletRequest request,HttpSession session)
	{
				
		return new ModelAndView("checkOut");
	}*/
	
	
	
	@RequestMapping("dec.html")
	ModelAndView decQuantity(HttpServletRequest request,HttpSession session)
	{
		int id=Integer.parseInt(request.getParameter("a"));
		String userid=request.getParameter("b");		
		shoppingCartService.updatedec(id);
		//to update item in the topheader
		shoppingCartDao.updateItem(userid,session);
		List<ShoppingCart> list=shoppingCartService.checkOut(userid);		
		return new ModelAndView("checkOut","list",list);
	}
	
	@RequestMapping("Submitorder.html")
	ModelAndView Submitorder(HttpServletRequest request)
	{
		String userid=request.getQueryString();
		shoppingCartService.updateTempField(userid);		
		return new ModelAndView("greeting");
	}
	

}
