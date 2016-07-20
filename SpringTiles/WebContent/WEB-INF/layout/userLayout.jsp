<%@page import="com.ipuro.model.Category"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
<!-- Meta tags -->
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=100%; initial-scale=1; minimum-scale=1;" />

		<!-- Favicon -->
		<link rel="shortc0ut icon" href="images/favicon.ico" type="image/x-icon" />
<meta name="description" content="<tiles:insertAttribute name="meta name="/>"/>
<meta name="keywords" content="organic foods, food, textiles, cosmetics, wellness, health products, natural, eco-friendly, shopping deals, offers, best buy, certified, green products, good, cheap" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta name="revisit-after" content="3 days" />
<meta name="author" content="Ipuro" />
		<!-- Stylesheets -->
		<link rel="stylesheet" href="css/main-stylesheet.css" type="text/css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ropa+Sans" type="text/css" />
		<!--[if lt IE 9]><link rel="stylesheet" href="css/ie.css" type="text/css" type="text/css" /><![endif]-->
		<!-- <link rel="stylesheet" href="css/dark.css" type="text/css" /> -->

		<!-- JavaScripts -->
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/jquery.placeholder.min.js" type="text/javascript"></script>
		<script src="js/jquery.uniform.js" type="text/javascript"></script>
		<script src="js/global.js" type="text/javascript"></script>
		<script src="js/jquery.cycle.all.js" type="text/javascript"></script>
		<script src="js/color_switcher.js" type="text/javascript"></script>
		<script src="js/jquery.validate.min.js" type="text/javascript"></script>
		<script src="js/registration.validation.js" type="text/javascript"></script>
	  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-44127598-1', 'ipuroorganic.com');
  ga('send', 'pageview');

</script>
</script>
          <script type="text/javascript">
	$(document).ready(function (){
		$("html, body").animate({"scrollTop":500},"slow");
		
	});
<script type="text/javascript">
          <%
          response.setHeader("Pragma","no-cache");
  		  response.setHeader("Cache-Control","no-store");
  		  response.setHeader("Expires","0");
  		  response.setDateHeader("Expires",-1);
      if(session.getAttribute("userid")==null)
    	  response.sendRedirect("home.html");
  		  %>
          </script>
          

            
            
            <title><tiles:insertAttribute name="title" /></title>
    </head>
    <body>
       
     
     
     
     <div>
        <tiles:insertAttribute name="top" />
        </div>
     
     <div class="main-body-wrapper">
     
     	
        <!-- BEGIN .main-header -->
			<div class="main-header">

				<div class="logo">
					<a href="home.html"><img src="image/logo.png" alt="" /></a>
					<!-- <a href="#" class="logo-icon custom-font-1"><span>Soulage</span></a> -->
					<!-- <a href="#" class="logo-blank custom-font-1"><span>Mante&nbsp;and&nbsp;sons</span></a> -->
					<span class="custom-font-1">we sell quality products at affordable prices</span>
					
				</div>

				<div id="search">
<form action="http://www.google.com/search" id="searchbox_017941334893793413703:sqfrdtd112s" target="_blank">
<input type="hidden" name="cx" value="" />
<input id="searchBox" type="text" name="q" size="25" /><br>
      <input id="searchButton" type="submit" name="sa" value="Search" />
    <input type="radio"  name="sitesearch" value="" checked />The Web
    </form>
   <script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_017941334893793413703%3Asqfrdtd112s&lang=en"></script>   
  </div>
				
<!-- <a href="login_or_register.html"><img src="images/sign_in.png" alt="" /></a> -->
<!-- <a href="signUp.html"><img src="images/sign_up.png" alt="" /></a> -->
				<div class="clear"></div>

				<div class="main-menu-iphone">
					<div class="categories">
						<span class="icon"></span>
						<select>
							<option>categories</option>
							<option>Homepage</option>
							<option>Featured items</option>
							<option>Catalog</option>
							<option>Blog</option>
							<option>Features</option>
							<option>Contact us</option>
						</select>
					</div>
					
					<div class="clear"></div>
				</div>

				<div class="main-menu custom-font-1">
					<table>
						<tr>
							<td>
								<ul>
									<li><a href="home.html" >Homepage</a></li>
									<li><a href="aboutus.html">About Us</a></li>
									
									<li>
										<a href="WhyOrganic.html">Why Oragnic</a>
										
									</li>
									<li><a href="PrivacyPolicy.html" >PrivacyPolicy</a></li>
									<li><a href="contactus.html" >Contact Us</a></li>
								<li><a href="TOS.html" >Terms&Condtions</a></li>
								
								
								</ul>
							</td>
						</tr>
					</table>
				</div>

				<div class="clear"></div>

			<!-- END .main-header -->	
			</div>    
			<div class="main-content-wrapper">
<!-- BEGIN .homepage-slider -->
				<div class="homepage-slider">
				
					<!-- BEGIN  #hompage-slider_content -->
					<div id="hompage-slider_content">
	
						<!-- <div class="item">
							
							
							<a href="#"><img src="images/organiconehssg_600x450.jpg" alt="" width="944" /></a>
						</div> -->
	
						<div class="item">
							
							
							<a href="#"><img src="images/USDA-logo.gif" alt="" width="944" /></a>
						</div>
	
						<div class="item">
							
							
							<a href="#"><img src="images/photos/slider3.jpg" alt="" width="944" /></a>
						</div>
						<div class="item">
							
							<a href="#"><img src="images/dfs.png" alt="" width="944" /></a>
						</div>
						
	
						
		
					<!-- END #hompage-slider_content -->
					</div> 
				<div class="navigation custom-font-1">
						<table>
							<tr>
								<td>
									<a href="#" class="previous">Previous</a>
									<span id="pager">
									<a href="#" class="bullet"></a>
									<a href="#" class="bullet"></a>
									<a href="#" class="bullet"></a>
									<a href="#" class="bullet"></a>
									</span>
									<a href="#" class="next">Next</a>
								</td>
							</tr>
						</table>
					</div>
				
	<div class="main-menu2 custom-font-1">
					<table>
				
						<tr>
						
							
					<% 
       int count=0;
       List<Category> categorylist=(List<Category>)session.getAttribute("categorylist");
		%>
		
		
		<%
 		for(Category category:categorylist)
 		{
	 
			 count++;
	 		if(count==9)
	 		{
		 		count=1;
		 
	
 		%>
						
						
						
						</tr></table>
						</div>
						<div class="main-menu2 custom-font-1">
						<table>					
						<tr>
 
 	<%
	 }
 	%>
							<td>
								<ul>
									<li><a href="selectcategory.html?<%=category.getCategoryname()%>">	 
 										<%=category.getCategoryname() %>
 										</a> </li>								
								
								</ul>
							</td>
													<% } %>
														
						</tr>

					</table>
	
	
  </div>
       
        
        
    </div>
        
        
        
        <!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//cdn.zopim.com/?1aD0Ce4VJTI2j1tI0toyBlFFTwspbJzU';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->
        
      
        
        
         
        <div id="bodycontent">
        <tiles:insertAttribute name="body" />
        </div>
        </div>
             
        
<!-- BEGIN .main-footer-wrapper -->
			<div class="main-footer-wrapper">

				<a href="#" class="back-to-the-top">Go back to the top</a>

				<div class="main-footer">

					
					 <div class="newsletter">
						
							<p ><b>Subscribe to our Newsletter</b></p>
					
						<form action="newsletter.html" id="letter">
							<input type="text"  name="email" class="input-text-2 trans-1" placeholder="your email address" />
							<input type="submit" value="Subscribe" class="submit custom-font-1" />
							<div class="clear"></div>
						</form>
						</div>
						
						
						
						
						<p class="social">
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Find us on social networks:</b>
							<a href="facebook.html"><img src="images/ico-facebook-1.png" alt="Facebook" width="33" height="31" /></a>
							<a href="twitter.html"><img src="images/ico-twitter-1.png" alt="Twitter" width="33" height="31" /></a>
							<a href="rss.html"><img src="images/ico-rss-1.png" alt="RSS" width="33" height="31" /></a>
						</p>
							<div class="copyright">
						<table>
							<tr>
								<td>
									<span>&copy; 2013 Ipuroorganic theme by Ipurofoods</span>
									<span class="spacer">&nbsp;</span>
									<span>All Rights Reserved</span></td>
							</tr>
						</table>
					</div>
					</div>
						
						
					
					

			
			</div>
</div>
        
            </body>
</html>
