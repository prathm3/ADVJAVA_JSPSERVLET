<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="add" method="post">
	Pid : <input id="pid" name="pid" type="text"/>
	Pname : <input id="pname" name="pname" type="text" />
	Qty : <input id="qty" name="qty" type="text" />
	Price: <input id="price" name="price" type="text" />
	
	<button type="submit" id="btn"> Add Product </button>
</form>


</body>
</html>