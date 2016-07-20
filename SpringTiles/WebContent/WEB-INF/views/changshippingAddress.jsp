<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/checkout.css" type="text/css" />
		<link rel="stylesheet" href="css/addproduct.css" type="text/css" />
		
<script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>

<script src="js/registration.validation.js" type="text/javascript" charset="utf-8"></script>          

</head>
<body OnLoad="document.myform.name.focus();">
<%String msg= (String)request.getAttribute("msg"); %>

<div id="container">

 <% 
                       if(request.getAttribute("msg")!=null) 
                       {String str=(String)request.getAttribute("msg");
									%>		
									<h6 style="color:red;z-index: 3"><%=str%></h6>
									
										<% 
                       }
                        %>

<div class="main-title">
					<p class="custom-font-1">New Address Details</p>
				</div>
				<div class="checkout-item billing-address">
				<div class="box">
<div class="single-full-width">
    <div class="contact-form">
<form action="changedShippingAddress.html" id="reg" name="myform">

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

<div class="DA_custom_form hidden">
<div class="btnp"><input type="submit" class="blue" value="Update" /></div>
</div>

</form>
</div>
</div>



 


</div>

</div>

</div>

</body>
</html>