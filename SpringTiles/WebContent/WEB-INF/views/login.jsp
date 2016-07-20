 <%HttpSession sess=request.getSession(true);	
     String userid=(String)sess.getAttribute("userid");
     
     %>
<link rel="stylesheet" href="css/style.css" />
<!-- <link rel="stylesheet" href="css/stylereg.css" /> -->
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>	
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/registration.validation.js"></script>
<body OnLoad="document.myform.userid.focus();">
<center>
<% String message=(String)request.getAttribute("message"); 
String str="thank you for registration <br>pleaze Now login to purchage";

%>
<br><br>
<%if(str.equals(message)) 
{
	%>
	<h6 style="color:blue;font-weight:bold ;z-index: 7"><%=message%></h6>
	<%
}

%>

<%String msg= (String)request.getAttribute("msg"); %>



 <% 
 
                       if(request.getAttribute("msg")!=null) 
                       {String str1=(String)request.getAttribute("msg");
									%>		
									<h6 style="color:blue;font-weight:bold ;z-index: 7"><%=str1%></h6>
									<%} %>
									<br>

</center>
<%if(sess.getAttribute("userid")==null){ %>
<div class="main">
		<div class="box">
			<h2>Sign in to your account</h2>
			<h3>Please enter your name and password to log in.</h3>
				<fieldset>
				<form class="form" method="post" name="myform" action="loginformdata.html" id="userlogin">
			
					<div class="row">
						<input type="text" class="login error" name="userid" placeholder="Username" />
						
					</div>
					<div class="row">
						<input type="password" class="password" name="password" placeholder="Password"/>
						
					</div>	
							<div class="row">
						<input type="submit" value="Sign in" />
						</div>
					</form>
					<div class="row">
			<div class="submit">
							<a href="signUp.html">	<input type="submit" value="Create my account" /></a>
							</div>
					</div>
					
				</fieldset>
		</div>
	
	</div>
	<%}
else { %>
<center>

<h6><b>You are already logged in</b></h6>

</center>


<%} %>
</body>



