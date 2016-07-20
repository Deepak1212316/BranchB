<%@page import="com.ipuro.model.Category"%>
<%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    
    <link rel="stylesheet" href="css/main-stylesheet.css" type="text/css" />
<div class="main-title">
					<p class="custom-font-1">View Categories List</p>
				</div>
				<div class="box">
				<table border="1" width=100%  title="View Category">
<tr bgcolor="pink">
<th >Categoryid</th>
<th>CategoryName</th>
<th></th>
</tr>
<%
List<Category> list=(List<Category>)request.getAttribute("list");
  %>
 <%
 for(Category category:list)
 {
 %>	 
<tr>
<td><%=category.getCategoryid() %></td>

<td><%=category.getCategoryname() %></td>
<td><a href="delete_by_categoryid.html?<%=category.getCategoryid()%>"><b>Delete</b></a></td>


<%
  }
 %>
</table>
</div>
