package com.ipuro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.darwinsys.spdf.MoveTo;
import com.darwinsys.spdf.PDF;
import com.darwinsys.spdf.Page;
import com.darwinsys.spdf.Text;
import com.ipuro.model.Order;
import com.ipuro.service.OrderService;

@Controller
public class OrderController 
{
	@Autowired
	OrderService orderService;
	@RequestMapping("ViewOrder.html")
	ModelAndView ViewOrder()
	{
		List<Order> list=orderService.ViewOrder();
		return new ModelAndView("viewOrder","list",list);
	}
	
	
	@RequestMapping("deleteOrder_by_id.html")
	ModelAndView deleteOrder_by_id(HttpServletRequest request)
	{	
		int orderId=Integer.parseInt(request.getQueryString());
		orderService.deleteOrder_by_id(orderId);
		List<Order> list=orderService.ViewOrder();
		return new ModelAndView("viewOrder","list",list);
	}
	
	
	@RequestMapping("printOrder_by_id.html")
	ModelAndView printOrder_by_id(HttpServletRequest request,HttpServletResponse response)
	{	
		int orderId=Integer.parseInt(request.getQueryString());
		Order order=orderService.printOrder_by_id(orderId);		
		
		
		
		int orderid=order.getOrderid();	
		String strorderid=String.valueOf(orderid);
	     String custname=order.getCustname();
	     String itemname=order.getItemname();
	     int quantity=order.getQuantity();
	     String strquantity=String.valueOf(quantity);
	     float price=order.getPrice();
	     String strprice=String.valueOf(price);
	     String email=order.getEmail();   
	     String zip=order.getZip();  
	     String state=order.getState();
	     String city=order.getCity();
	     String address=order.getAddress();   
	     String phone=order.getPhone();
	     
	     	PrintWriter out=null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			response.setContentType("application/pdf");
			response.setHeader("Content-disposion","inline;filename='javapdf'");
			PDF p=new PDF(out);
			Page p1=new Page(p);
			p1.add(new MoveTo(p, 200, 700));
			p1.add(new Text(p, "Order ID  :"+strorderid));
			p1.add(new Text(p,"Name   :"+custname));
			p1.add(new Text(p,"Product  :"+ itemname));
			p1.add(new Text(p, "quantity  :"+strquantity));
			p1.add(new Text(p, "price   :"+strprice));
			p1.add(new Text(p,"Email Id  :"+email));
			p1.add(new Text(p," Zip Code :"+ zip));
			p1.add(new Text(p,"State :"+ state));
			p1.add(new Text(p,"City  :"+ city));
			p1.add(new Text(p," Address :"+ address));
			p1.add(new Text(p,"Phone Number :"+ phone));
			
			p.add(p1);
			p.setAuthor(" I am not any author i am a developer and enterpenior of close future");		
		
		
		/*List<Order> list=orderService.ViewOrder();
		return new ModelAndView("viewOrder","list",list);*/			
		/**/	
			p.writePDF();
			/*return new ModelAndView("orderPdf","p",p);*/
			return new ModelAndView("redirect:viewOrder.html");
	}
	

}
