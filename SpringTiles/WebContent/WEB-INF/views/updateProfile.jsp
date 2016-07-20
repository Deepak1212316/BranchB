
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700' rel='stylesheet' type='text/css'>
	<script src="js/combined.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/make_dropdown.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/js-func.js" type="text/javascript" charset="utf-8"></script>




          


<body OnLoad="document.myform.name.focus();">
<center>
<%String msg= (String)request.getAttribute("msg"); %>

<div id="container">

 <% 
                       if(request.getAttribute("msg")!=null) 
                       {String str=(String)request.getAttribute("msg");
									%>		
									<h6 style="color:blue;z-index: 3"><%=str%></h6>
									
										<% 
                       }
                        %>
</div>
</center>
<div class="main-title">
					<p class="custom-font-1">Update Profile</p>
				</div>
		

    
<form action="updatingprofile.html" class="DA_custom_form" id="registration-form" name="myform">

  <div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>E-mail</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field" id="email" name="email" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
							<div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Password</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="password" class="field" id="p1" name="password" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		<div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Confirm Password</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="password" class="field" id="cpassword" name="cpassword" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		<div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Address</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field" id="address" name="address" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		<div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Zip</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field" id="zip" name="zip" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		<div class="cl"></div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>City</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field" id="city" name="city" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
		
		<div class="btnp"><input type="submit" class="blue" value="Update" /></div>
</form>




 






