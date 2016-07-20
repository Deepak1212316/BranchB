<%@page import="com.ipuro.model.Category"%>
<%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>


<center>
<table border="1"   title="View Category">

<%
int count=0;
List<Category> list=(List<Category>)request.getAttribute("list");
  %> 
  <tr>
 <%
 for(Category category:list)
 {
	 
	 count++;
	 if(count==6)
	 {
		 count=1;
		 
	
 %>
 </tr><tr>
 
 <%
	 }
 %>
 
 <td>
 <a href="selectcategory.html?<%=category.getCategoryname()%>">	 
 <input type="submit"  value="<%=category.getCategoryname() %>"/>
 </a> 
</td>

<%  
 }
 %>
 
  
    
 <!-- product by detail --> 
 <%-- <%
List<Product> products=(List<Product>)request.getAttribute("pro");
System.out.println(products);
%> --%>
<tr>
<%-- <%
for(Product product:products)
{	
%>
<td><a href="viewproductbycategory.html?<%=product.getProductid()%>"><img src="<%=product.getUserImage()%>" style="width: 100px;height: 100px"></a><br><%=product.getProductprice()%><br><%=product.getProductname()%></td>
<%} %> --%>
 
 
<!--  </form> -->
</table></center>
