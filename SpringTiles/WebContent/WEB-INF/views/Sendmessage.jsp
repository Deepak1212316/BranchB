 <%@page import="com.ipuro.model.Contactform"%>
 <%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>

   


  <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	
	<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700' rel='stylesheet' type='text/css'>
	<script src="js/combined.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/make_dropdown.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/js-func.js" type="text/javascript" charset="utf-8"></script>

		


<%String email= request.getParameter("email");
System.out.println(email);
%>
<form action="sendemail.html" class="DA_custom_form hidden" id="contact-form">
    <div class="box">
    <div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Email</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field"  name="email" value="<%=email %>" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
     <div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Subject</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field"  name="subject" placeholder="emailsubject" autofocus />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>

      <div class="cl">&nbsp;</div>
		<div class="DA_holder">
			<div class="DA_holder horizontal">
			<label>Your Message</label>
			<div class="textarea-frame">
				<div class="cl">&nbsp;</div>
				
				<textarea name="message"  class="field" rows="8" cols="40"></textarea>
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		<div class="btnp"><input type="submit" class="blue" value="Send Mail" /></div>
		<div class="cl">&nbsp;</div>
		

    </div>
  </form>

