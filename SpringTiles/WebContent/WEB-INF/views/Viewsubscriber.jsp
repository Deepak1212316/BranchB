<%@page import="com.ipuro.model.Newsletter"%>
<%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>
<link rel="stylesheet" href="css/cssforconct.css" type="text/css" media="all" />
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css" media="all" />
<title>View Subscriber</title>


<table border="1"   title="View Category" width="100%">
<tr bgcolor="yellow">
<th>Subscriber Id</th>
<th>Email</th>
</tr>
<%
List<Newsletter> list=(List<Newsletter>)request.getAttribute("list");
System.out.println(list);
  %>
 <%for(Newsletter newsletter:list){%>	 
<tr>
<td><%=newsletter.getId()%></td>
<td><%=newsletter.getEmail()%></td>
<%}%>
</table>


<%-- <a href="newsletterm.html?email=
<%
for(Newsletter newsletter:list)
{%>	
	<%=newsletter.getEmail()%>,
	<%
}
%>"> --%>
<a href="newsletterm.html" >
<div class="DA_custom_form hidden"> <div class="btnp"><input type="submit" class="red" value="Proceed To Newsletter" /></div>
		<div class="cl">&nbsp;</div></div></a>
		
		
		<!-- </a> -->
