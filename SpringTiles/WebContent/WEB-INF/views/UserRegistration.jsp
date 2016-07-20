<%HttpSession sess=request.getSession(true);	
     String userid=(String)sess.getAttribute("userid");
        %>

<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/addproduct.css" type="text/css" />
<link rel="stylesheet" href="css/checkout.css" type="text/css" />

<script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>

<script src="js/registration.validation.js" type="text/javascript" charset="utf-8"></script>

<body OnLoad="document.myform.name.focus();">
<%String msg= (String)request.getAttribute("msg"); %>

<!-- <div id="container"> -->
<center>
 <% 
                       if(request.getAttribute("msg")!=null) 
                       {String str=(String)request.getAttribute("msg");
									%>		
									<h6 style="color:red;z-index: 3"><%=str%></h6>
									
										<% 
                       }
                        %>
                        </center>

<%if(sess.getAttribute("userid")==null){ %>
<div class="checkout-item billing-address">
<div class="box">

					<div class="contact-form">
						<form action="register.html" method="post" class="DA_custom_form hidden" id="reg" name="myform">
							<p>
								<label>Your name:</label>
								<input type="text"   class="input-text-1" name="name" />
							</p>
							<p>
								<label>User Id:</label>
								<input type="text" class="input-text-1" name="userid" />
							</p>
							<p>
								<label>Your e-mail:</label>
								<input type="text" class="input-text-1" name="email" />
							</p>
							<p>
								<label>Phone Number:</label>
								<input type="text" class="input-text-1" name="phone" />
							</p>
							<p>
								<label>Password:</label>
								<input type="password" class="input-text-1" name="password" id="p1" />
							</p>
							<p>
								<label>Confirm Password:</label>
								<input type="password" class="input-text-1" name="cpassword"  />
							</p>
							<p>
								<label>Address:</label>
								<input type="text" class="input-text-1" name="address" />
							</p>
							<p>
								<label>Zip:</label>
								<input type="text" class="input-text-1" name="zip" />
							</p>
							<p>
								<label>City:</label>
								<input type="text" class="input-text-1" name="city" />
							</p>
							<p>
								<label>State:</label>
								<select name="state">
									<option >Andaman &amp; Nicobar</option>
			<option >Andhra Pradesh</option>
			<option >Arunachal Pradesh</option>
			<option >Assam</option>
			<option >Bihar</option>
			<option >Chandigarh</option>
			<option >Chhattisgarh</option>
			<option >Delhi</option>
			<option >Dadra &amp; Nagar Haveli</option>
			<option >Gujarat</option>
			<option >Goa</option>
			<option >Himachal Pradesh</option>
			<option >Harayana</option>
			<option >Jharkhand</option>
			<option >Jammu &amp; Kashmir</option>
			<option >Karnataka</option>
			<option >Kerala</option>
			<option >Lakshadweep</option>
			<option >Meghalaya</option>
			<option >Maharashtra</option>
			<option >Mizoram</option>
			<option >Manipur</option>
			<option >Madhya Pradesh</option>
			<option >Nagaland</option>
			<option >Orissa</option>
			<option >Punjab</option>
			<option >Pondicherry</option>
			<option>Rajasthan</option>
			<option >Sikkim</option>
			<option >Tamil Nadu</option>
			<option >Telngana</option>
			<option >Tripura</option>
			<option >Uttar pradesh</option>
			<option >Uttaranchal</option>
			<option >West bengal</option>


								</select>

							</p>
							<p>
								<label>Country:</label>
								<select name="country">
								<option >India</option>


								</select>

							</p>
							
							
								<div class="DA_custom_form">
							<div class="btnp"><input type="submit" class="blue"  value="Register" /></div>
							</div>
						
							
						</form>
						
					</div>

					<div class="clear"></div>

			
				</div>

</div>

<%}
else { %>
<center>

<h6><b>You are already Registered</b></h6>

</center>


<%} %>























