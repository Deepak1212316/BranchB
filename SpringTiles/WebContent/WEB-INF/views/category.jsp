<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	
	<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700' rel='stylesheet' type='text/css'>
	<script src="js/combined.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/make_dropdown.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/js-func.js" type="text/javascript" charset="utf-8"></script>
<center>
<% String message=(String)request.getAttribute("message"); 
String str="Category is added";

%>
<br><br>
<%if(str.equals(message)) 
{
	%>
	<h6 style="color:blue;font-weight:bold ;z-index: 7"><%=message%></h6>
	<%
}

%>

</center>
<body OnLoad="document.myform.mytextfield.focus();">
<form action="categoryform.html" name="myform" class="DA_custom_form" id="addcategory" >
	<div class="box">
			<div class="cl">&nbsp;</div>
		<div class="DA_holder">
		<div class="DA_holder horizontal">
			<label>Category Name</label>
			<div class="DA_field_container">
				<div class="cl">&nbsp;</div>
				<input type="text" class="field" id="categoryname" name="categoryname" />
				<span><i class="icon-remove"></i></span>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		</div>
<div class="btnp"><input type="submit" class="blue" value="Add Category" /></div>
		
	</div>
	</form>

































<!-- <br><br><br><br>
<center>
<h1 style="color:black;font-weight:bold ;z-index: 7">Add Category</h1>
<br>
<br>

<form name="myform" action="categoryform.html" id="addcategory">
<table width="50%"><tr><td>
<h5 style="color:gray;font-weight:bold ;z-index: 7">
Category Name:</h5>
</td><td align="right"><input type="text" name="categoryname"></td>
</tr>
<tr>
<td colspan="2" align="right"><input name="mytextfield" type="submit" value="Add Category"></td>
</tr>
 </table>
   

</form>
</center> -->

