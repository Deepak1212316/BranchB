
<%@page import="com.ipuro.model.User"%>
<title>Shipping Address</title>


	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	
	<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />

  <link rel="stylesheet" href="css/Contactstyle.css">
<%
User user=(User)session.getAttribute("user");

%>
<%
	
String userid=(String)session.getAttribute("userid");
%>

<div class="main-title">
					<p class="custom-font-1">Your Shipping Address</p>
				</div>
				<!-- BEGIN .single-full-width -->
			
		
				<div class="single-full-width" >
				<div class="box">
       
       <p class="contact-input">
		<label><b>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </b></label><label><b><%=user.getAddress()%></b></label>
		</p>
		
		
		<p class="contact-input">
		<label><b>City:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label><label><b><%=user.getCity()%></b></label> 
		</p>
		
		
		<p class="contact-input">
		<label><b>State:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label><label><b><%=user.getState()%></b></label> 
		</p>
		
		
		<p class="contact-input">
		<label><b>Zip: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label><label><b><%=user.getZip()%></b></label> 
		</p>
		
      <p class="contact-submit">
        <!-- <input type="submit" value="Ship MyProduct At this address"> -->
        <a href="putorder.html?<%=userid%>" class="button-3 custom-font-1 trans-1"><span>Ship MyProduct At this address</span></a>
      </p>
      
      <br>
      <br>
      <br>
      <br>
       <p class="contact-submit">
       <a href="changeAddress.html?<%=userid%>" class="button-3 custom-font-1 trans-1"><span>Change   my Shipping  address</span></a>

      </p>
      
   </div></div>