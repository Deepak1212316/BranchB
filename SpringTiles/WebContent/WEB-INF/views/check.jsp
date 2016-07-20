<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>

<SCRIPT>
function g()
{
	
<%
if(session.getAttribute("userid")==null)
{
%>	
alert("Please Login first to purchase product");
<%
}
%>
}
</SCRIPT>


          <%
List<Product> products=(List<Product>)request.getAttribute("pro");

%>
          
           <!-- BEGIN .featured-items -->
				<div class="featured-items">

					<div class="main-title">
						<p class="custom-font-1">Featured items</p>
						<a href="#" class="view">view more featured items</a>
					</div>



					<div class="items-wrapper">
						<div class="items">
	<%for(Product product:products)
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
														<a href="#" class="button-1 custom-font-1 trans-1"><span>Quick shop</span></a>
													</td>
												</tr>
											</table>
										</div>
										<a href="getproductDetails.html?a=<%=product.getProductid()%>&b=<%=product.getCategoryname()%>"><img src="<%=product.getUserImage()%>" alt="" width="214" style="left: 50%; margin-left: -107px; top: 50%; margin-top: -136px;" /></a>
									</div>
								</div>
								<h3><a href="getproductDetails.html?a=<%=product.getProductid()%>&b=<%=product.getCategoryname()%>" class="custom-font-1" onclick="g()"><%=product.getProductname()%></a></h3>
								<p><b class="custom-font-1">Rs.<%=product.getProductprice()%></b></p>
							</div>
	<%} %>
					<div class="clear"></div>
</div></div>
				<!-- END .featured-items -->
				</div>

