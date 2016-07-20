<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <link rel="stylesheet" href="css/style1.css" type="text/css" />
<div class="main-title">
					<p class="custom-font-1">View Products List</p>
				</div>
				<div class="box">
<!-- <link rel="stylesheet" href="css/main-stylesheet.css" type="text/css" />
<div class="main-title">
					<p class="custom-font-1">View Products List</p>
				</div> -->
			
<table border="3" width="100%"  title="Product list">
<tr bgcolor="pink"><th>Categoryname</th>
<th>Productname</th>
<th>Productprice</th>
<th>UserImage</th>
<th>Quantity</th>
<th>Keywords</th>
<th>Briefdisc</th>
<th>Delete</th>
</tr>
<%
List<Product> list=(List<Product>)request.getAttribute("list");
 /* String categoryname=null;  
 String productname=null;	
 String productprice=null;    
 String userImage=null;
 String quantity=null;
 String description=null;    
 String briefdisc=null; */ %>
 <%
 for(Product product:list)
 {
 %>	 
<tr>
<td><%=product.getCategoryname() %></td>

<td><%=product.getProductname() %></td>

<td><%=product.getProductprice() %></td>

<td><%=product.getUserImage() %></td>

<td><%=product.getQuantity() %></td>

<td><%=product.getDescription() %></td>

<td><%=product.getBriefdisc() %></td>

<td><a href="delete_by_id.html?<%=product.getProductid()%>"><b>Delete</b></a></td>


<%
  }
 %>
</table>
</div>