<%@page import="com.ipuro.model.ShoppingCart"%>
<%@page import="java.util.List"%>

<%
	
String userid=(String)session.getAttribute("userid");
%>



<!-- BEGIN .cart-wrapper -->
				<div class="cart-wrapper">

					<div class="main-title">
						<p class="custom-font-1">Shopping cart</p>
						<a href="home.html" class="continue">continue shopping</a>
					</div>

					<div class="cart-titles">
						<p class="item-image">Product name</p>
						<p class="quantity">Quantity</p>
						<p class="price">Price</p>
					</div>

					<form action="#">


							
							<%
float sum=0;
if(request.getAttribute("list")!=null){
List<ShoppingCart> list=(List<ShoppingCart>)request.getAttribute("list");

	
for(ShoppingCart shoppingCart:list)
{
%>
							
							
						<div class="cart-items">

							<div class="row">
								<div class="item-image">
									<div class="image-wrapper-1">
										<div class="image">
											<div class="image-overlay-1 trans-1">
												<table>
													<tr>
														<td>
															<a href="#" class="button-2 trans-1"></a>
														</td>
													</tr>
												</table>
											</div>
											<a href="#"><img src="<%=shoppingCart.getItemImage() %>" alt="" width="94" height="94" /></a>
						
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="desc">
									<h3 class="custom-font-1"><a href="#"><%=shoppingCart.getItem()%></a></h3>
									
								</div>
								<div class="quantity">
									<input type="text" class="input-text-1 count" value="<%=shoppingCart.getQuantity()%>" />
									
									<a href="dec.html?a=<%=shoppingCart.getI()%>&b=<%=shoppingCart.getUserid()%>"><img src="images/minus.png" alt="" /></a>
									<a href="inc.html?a=<%=shoppingCart.getI()%>&b=<%=shoppingCart.getUserid()%>" ><img src="images/plus.png" alt="" /></a>
								</div>
								<div class="price custom-font-1">
								
				<%float total=shoppingCart.getQuantity()*shoppingCart.getPrice(); 
 sum=sum+total;
%>
									<%=total%>
								</div>
								<div class="remove">
									<a href="removeItem.html?a=<%=shoppingCart.getI()%>&b=<%=userid%>">remove</a>
								</div>
								<div class="clear"></div>
							</div>
				
				
							<%}

%>
							
								<div class="total">
									<div class="checkout">
										<p>
											<s>Total payment:</s>
											<b class="custom-font-1">Rs.<%=sum %></b>
										</p>
										<p>
											<%-- <a href="putorder.html?<%=userid%>" class="button-3 custom-font-1 trans-1"><span>Proceed to checkout</span></a> --%>
										<a href="shippingInf.html" class="button-3 custom-font-1 trans-1"><span>Proceed to checkout</span></a>
										</p>
									</div>
								</div>
							</div>
<%}
else{

%>${msg}
<%
}
%>							
						</form>

					</div>

				<!-- END .cart-wrapper -->
				

				<div class="clear"></div>



