package com.ipuro.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ipuro.model.Category;
import com.ipuro.model.FileUpload;
import com.ipuro.model.Product;
import com.ipuro.model.ShoppingCart;
import com.ipuro.service.CategoryService;
import com.ipuro.service.ProductService;

@Controller
public class ProductController 
{
@Autowired
ProductService productService;
@Autowired
CategoryService categoryService;
@RequestMapping("AddProduct.html")
ModelAndView AddProduct(ModelMap map)
{	map.addAttribute("productcontainer");
	List<Category> list=productService.AddProduct();
	
	return new ModelAndView("addProduct", "list", list);
}



@RequestMapping("setproduct.html")
ModelAndView setproduct(Product product,FileUpload fileUpload,HttpServletRequest request)
{   
	MultipartFile multipartFile=fileUpload.getFile();
	
	if(multipartFile!=null) {
		try{
			
			multipartFile.transferTo(new File(request.getRealPath("/")+"/picture/"+ multipartFile.getOriginalFilename()));
			product.setUserImage("/picture/"+multipartFile.getOriginalFilename());
			/*product.setUserImage("/SpringTiles/picture/"+multipartFile.getOriginalFilename());*/
			
			
			
		}
		catch(Exception e){}
		}
	
	
	productService.setproduct(product);
	return new ModelAndView("redirect:AddProduct.html");
}



@RequestMapping("ViewProduct.html")
ModelAndView ViewProduct()
{
	List<Product> list=productService.ViewProduct();
	return new ModelAndView("ViewProducttable","list",list);
}

@RequestMapping("home.html")
ModelAndView homeProduct(HttpSession session)
{	
	List<Category> categorylist=categoryService.ViewCategory();
	session.setAttribute("categorylist", categorylist);
	/*return new ModelAndView("viewCategory","list",list);*/	
	List<Product> list=productService.ViewProduct();
	return new ModelAndView("home","pr",list);
}

@RequestMapping("getproductDetails.html")
ModelAndView Productdetail(HttpServletRequest request,HttpSession session)
{
	
	
	int id=Integer.parseInt(request.getParameter("a"));
	System.out.println(id);
	String catProduct=request.getParameter("b");
	Product product=productService.getproduct(id);
	session.setAttribute("product", product);
	
	/*return new ModelAndView("viewdetail","product",product);*/
	List<Product> list=productService.ViewProductOfCategory(catProduct);
	session.setAttribute("list", list);
	return new ModelAndView("viewdetail");
}





@RequestMapping("selectcategory.html")
ModelAndView viewProductByCategory(HttpServletRequest request)
{
	String categoryName=request.getQueryString();	
	List<Product> pro=productService.viewProductByCategory(categoryName);
	return new ModelAndView("check","pro",pro);
}



@RequestMapping("addtocart.html")
ModelAndView addtocart(HttpServletRequest request,HttpSession session)
{	
	
	
	int id=Integer.parseInt(request.getParameter("a"));
	String userid=request.getParameter("b");
	
	if(userid.equals("null"))
	{
		/*return new ModelAndView("viewdetail","error","plz login to get product");*/	
		return new ModelAndView("login");
	}
	else
	{
		
		
	Product product=productService.getproduct(id);	
	ShoppingCart shoppingCart=new ShoppingCart();
	shoppingCart.setUserid(userid);
	shoppingCart.setItem(product.getProductname());
	shoppingCart.setItemImage(product.getUserImage());
	shoppingCart.setPrice(Float.parseFloat(product.getProductprice()));
	shoppingCart.setQuantity(1);
	
	shoppingCart.setTotal(Float.parseFloat(product.getProductprice()));
	productService.setShoppingCart(shoppingCart,session);
	return new ModelAndView("redirect:viewdetail.html","sucess","your produect has been added to cart");
	}
}


@RequestMapping("viewdetail.html")
ModelAndView viewdetail(HttpServletRequest request,HttpSession session)
{
	
		return new ModelAndView("viewdetail");
}

@RequestMapping("delete_by_id.html")
ModelAndView delete_by_id(HttpServletRequest request)
{
	int id=Integer.parseInt(request.getQueryString());
	productService.deletById(id);
	return new ModelAndView("redirect:ViewProduct.html");
}
	
}
