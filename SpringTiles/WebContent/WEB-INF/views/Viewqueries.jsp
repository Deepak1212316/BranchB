<%@page import="com.ipuro.model.Contactform"%>
<%@page import="com.ipuro.model.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mysql.jdbc.IterateBlock"%>
<%@page import="com.ipuro.model.Product"%>
<%@page import="java.util.List"%>

     <link rel="stylesheet" href="css/style1.css" type="text/css" />
<title>View Query</title>

<div class="main-title">
					<p class="custom-font-1">View Queries List</p>
				</div>
				<div class="box">
<table border="3"   title="View Category" width="100%" >
<tr bgcolor="pink" >
<th>Name</th>
<th>Email</th>
<th>Phone no</th>
<th>Subject</th>
<th>Message</th>
<th>Send Message</th>
</tr>
<%
List<Contactform> list=(List<Contactform>)request.getAttribute("list");
  %>
 <%
 for(Contactform contactform:list)
 {
 %>	 
<tr >
<td><%=contactform.getName()%></td>
<td><%=contactform.getEmail()%></td>
<td><%=contactform.getPhoneno()%></td>
<td><%=contactform.getSubject()%></td>
<td><%=contactform.getMessage()%></td>
<td><a href="replyt.html?email=<%=contactform.getEmail()%>">Send Email</a></td></tr>
<%
  }
 %>
</table>
</div>