 <%HttpSession sess=request.getSession(true);	
     String userid=(String)sess.getAttribute("userid");
     
     %>
     
     
 
 <!-- BEGIN .main-dock-wrapper -->
			<div class="main-dock-wrapper">
				<div class="main-dock">
					<ul>
						<li><a href="home.html" class="home"></a></li>
						<li><a href="FAQ.html">FAQ &amp; Support</a></li>
						<li><a href="shippinginformation.html">Shipping information</a></li>
						<li class="checkout"><a href="logout.html">logout</a></li>
						<li class="checkout"><a href="updateprofile.html">Update Profile</a></li>
						
						<li class="checkout"><a href="checkOut.html?<%=userid%>">Checkout</a></li>
						<%if(sess.getAttribute("userid")==null){ %>
						<li class="cart"><a href="#">Your cart: <b>0 items (Rs 0.0 in total)</b></a></li>
						<%}
						
						else if(sess.getAttribute("item")==null) {%>
						<li class="cart"><a href="#">Your cart: <b>0 items (Rs 0.0 in total)</b></a></li>
						
						<%}
						else{
						%>
						<li class="cart"><a href="#">Your cart: <b><%=sess.getAttribute("item") %>items (Rs <%=sess.getAttribute("total") %> in total)</b></a></li>
						
						<%} %>
					</ul>
				</div>
			<!-- END .main-dock-wrapper -->
			</div>