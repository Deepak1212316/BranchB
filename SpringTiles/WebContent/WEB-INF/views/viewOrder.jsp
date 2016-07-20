

<%@page import="com.ipuro.model.Order"%>
<%@page import="java.util.List"%>
<link rel="stylesheet" href="css/style1.css" type="text/css" />
<div class="main-title">
					<p class="custom-font-1">View Order List</p>
				</div>
				<div class="box">
<table  border="3"   title="Product list">
<tr bgcolor="pink">
<th>Order Id</th>
<th>Iteam Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Customer Name</th>
<th>Address</th>
<th>Zip</th>
<th>City</th>
<th>State</th>
<th>Phone</th>
<th>Email Id</th>
<th>Print</th>
<th>Delete Category</th>
</tr>
<%
List<Order> list=(List<Order>)request.getAttribute("list");


%>

<%
 for(Order order:list)
 {
 %>	 
<tr>
<td><%=order.getOrderid() %></td>

<td><%=order.getItemname() %></td>

<td><%=order.getQuantity() %></td>

<td><%=order.getPrice() %></td>

<td><%=order.getCustname() %></td>

<td><%=order.getAddress() %></td>

<td><%=order.getZip() %></td>

<td><%=order.getCity() %></td>

<td><%=order.getState() %></td>

<td><%=order.getPhone() %></td>

<td><%=order.getEmail() %></td>


<td><a href="printOrder_by_id.html?<%=order.getOrderid()%>">Take Print</a></td>
<td><a href="deleteOrder_by_id.html?<%=order.getOrderid()%>">Delete</a></td>


<%
  }
 %>
 
 </table></div>