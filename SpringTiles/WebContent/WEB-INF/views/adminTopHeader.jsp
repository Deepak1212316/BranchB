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
						<li><a href="aboutus.html">About us</a></li>
						
						<li class="checkout"><a href="logout.html">logout</a></li>
						<li class="checkout"><a href="Viewsubscriber.html">View Subscriber</a></li>
						
					</ul>
				</div>
			<!-- END .main-dock-wrapper -->
			</div>