<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.ipuro.model.Category"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
		<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/checkout.css" type="text/css" />
		<link rel="stylesheet" href="css/addproduct.css" type="text/css" />
		<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700' rel='stylesheet' type='text/css'>

		
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ropa+Sans" type="text/css" />
		

<script src="js/registration.validation.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>


<form action="setproduct.html"   method="post" name="myform"  id="addproduct" enctype="multipart/form-data">
<div class="checkout-item billing-address">
<div class="box">
							<div class="main-title">

								<p class="custom-font-1">Fill Product Form</p>
							</div>
							<div class="items">
				<p>			<label>Category Name:</label>
									<%
      List<Category> list=(List<Category>)request.getAttribute("list");
									System.out.println(list);
      %>
      
        <select name="categoryname" id="categorynam1e">
       
       <%
       for(Category category:list)
       {
       %>
        <option><%=category.getCategoryname() %></option>
        <%} %>
        </select></p>
								
									<p><label>Product name:</label><input type="text" name="productname" class="input-text-1" /></p>
								<p><label>Product Price:</label><input type="text" name="productprice" class="input-text-1" /></p>
								<p><label>Product Image</label> <input type="file" name="file" class="input-text-1" /></p>
								<p><label>Quantity:</label><input type="text" name="quantity" class="input-text-1" /></p>
								<p><label>Keywords:</label><input type="text" name="description" class="input-text-1" /></p>
								<p><label>Description:</label><input type="text" name="briefdisc" class="input-text-1" /></p>
								
								
						
							</div>
							<div class="DA_custom_form">
							<div class="btnp"><input type="submit" class="blue"  value="Add " /></div>
							</div>
						</div>
		</div>				
</form>


