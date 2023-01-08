<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp" import="com.demo.beans.Product, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<Product> plist = (List<Product>) request.getAttribute("plist");%>

<table border='2'><tr>
	<th>Id</th><th>Name</th><th>qty</th>
	<th>price</th><th>operations</th>
	</tr>
	<% for(Product p: plist){ %>
		<tr><td><%= p.getPid() %></td>
			<td><%=p.getPname() %></td>
			<td><%=p.getQty() %></td>
			<td><%=p.getPrice() %></td>
			<td><a href='delete?pid=<%=p.getPid() %>'>delete</a> / <a href='edit?pid=<%=p.getPid() %>'>Edit</a></td></tr>
			<%} %>
		</table>

<a href="add">Add</a>
</body>
</html>