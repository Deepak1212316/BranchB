<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>

<title>Welcome|Ipuroorganic.com</title>
<link rel="stylesheet" href="css/main-stylesheet.css" type="text/css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ropa+Sans" type="text/css" />
<!-- JavaScripts -->
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/jquery.placeholder.min.js" type="text/javascript"></script>
		<script src="js/jquery.uniform.js" type="text/javascript"></script>
		<script src="js/global.js" type="text/javascript"></script>
		<script src="js/jquery.cycle.all.js" type="text/javascript"></script>
		<script src="js/color_switcher.js" type="text/javascript"></script>	
	
<%	
String userid=(String)session.getAttribute("userid"); %>	
<!-- <div id="container"> -->


<%

Product product=(Product)session.getAttribute("product");
int id=product.getProductid();
String error=(String)request.getAttribute("error");
String sucess=(String)request.getAttribute("sucess");
%>
<br><br><br>
<!-- BEGIN .main-item-wrapper -->
				<div class="main-item-wrapper">

					
					<div class="main-image">
						
							<div id="single-product-slider">
								<div class="image">
									<a href="#"><img src="<%=product.getUserImage()%>" alt="" width="344px" height="344px"/></a>
								
								
							</div>
						</div>
						<div class="clear"></div>
											</div>

					<div class="text">

						<h2 class="custom-font-1"><a href="#"><%=product.getProductname() %></a></h2>
						<div class="price custom-font-1">
							<div>
								<p><%=product.getProductprice() %></p>
								
							</div>
							<a href="addtocart.html?a=<%=id%>&b=<%=userid%>" class="button-3 custom-font-1 trans-1"><span>Add to cart</span></a>
							<div class="clear"></div>
						</div>

						
						<div class="description">
							<div class="button-navigation custom-font-1">
								<table>
									<tr>
										<td>
											<a href="#" class="active"><span>Description</span></a>
											
										</td>
									</tr>
								</table>
							</div>
							<div class="items">
								<div id="description_slider">
									<div class="item">
										<p><%=product.getBriefdisc() %></p>
									</div>
									<div class="item">
										<table>
											<tr>
												<td>Option 1</td>
												<td>Option 2</td>
												<td>Option 3</td>
												<td>Option 4</td>
												<td>Option 5</td>
											</tr>
											<tr>
												<td>Entry 1</td>
												<td>Entry 2</td>
												<td>Entry 3</td>
												<td>Entry 4</td>
												<td>Entry 5</td>
											</tr>
											<tr>
												<td>Row 1</td>
												<td>Row 2</td>
												<td>Row 3</td>
												<td>Row 4</td>
												<td>Row 5</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="clear"></div>

				<!-- END .main-item-wrapper -->
				</div>







<%
List<Product> products=(List<Product>)session.getAttribute("list");
 
%>         
           <!-- BEGIN .featured-items -->
				<div class="featured-items">

					<div class="main-title">
						<p class="custom-font-1">Featured items</p>
					
					</div>
					<div class="items-wrapper">
						<div class="items">
	<%/* for(Product product:products) */
	for(Product product2:products)
{


%>
							<div class="item-block-1">
								<div class="item-tag tag-off custom-font-1">
									<span>Sale</span>
								</div>
								<div class="image-wrapper-3">
									<div class="image">
										<div class="image-overlay-1 trans-1">
											<table>
												<tr>
													<td>
														<a href="#" class="button-1 custom-font-1 trans-1" ><span>Quick shop</span></a>
													</td>
												</tr>
											</table>
										</div>
										<a href="getproductDetails.html?a=<%=product2.getProductid()%>&b=<%=product2.getCategoryname()%>" ><img src="<%=product2.getUserImage()%>" alt="" width="214" style="left: 50%; margin-left: -107px; top: 50%; margin-top: -136px;" /></a>
									</div>
								</div>
								<h3><a href="getproductDetails.html?a=<%=product2.getProductid()%>&b=<%=product2.getCategoryname()%>" class="custom-font-1"><%=product2.getProductname()%></a></h3>
								<p><b class="custom-font-1">Rs.<%=product2.getProductprice()%></b></p>
							</div>
	<%} %>
					<div class="clear"></div>
</div></div>
				<!-- END .featured-items -->
				</div>

