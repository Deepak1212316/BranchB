<%@page import="com.ipuro.model.Newsletter"%>
<%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ipuro.model.Category"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
				<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
		
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/addproduct.css" type="text/css" />
		<link rel="stylesheet" href="css/checkout.css" type="text/css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ropa+Sans" type="text/css" />
		
<form action="sendnewsletter.html"   method="post" name="myform" enctype="multipart/form-data" >
<div class="checkout-item billing-address">
<div class="box">

							<div class="main-title">

								<p class="custom-font-1">Fill Newsletter Form</p>
							</div>
							
			<p>			<label>Email:</label>
									<%
									 List<Newsletter> list=(List<Newsletter>)request.getAttribute("list");
							
      %>
        <select name="email" id="emailfoid" multiple size="4" >
       
       <%
       for(Newsletter newsletter:list)
       {
       %>
        <option><%=newsletter.getEmail()%></option>
        <%} %>
        </select></p>
  <div class="items">
								<p><label>Subject</label><input type="text" name="subject" class="input-text-1" /></p>
								<p><label>Message</label><input type="text" name="message" class="input-text-1" /></p>
								<p><label>Attach File</label> <input type="file" name="attachFile" class="input-text-1" /></p>
								
								
								
						
							</div>
							<div class="DA_custom_form">
							<div class="btnp"><input type="submit" class="blue"  value="Send Newsletter " /></div>
							</div>
						</div>
		</div>				
</form>



