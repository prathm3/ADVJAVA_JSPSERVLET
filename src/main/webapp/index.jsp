<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="login" method="post">
	UserName: <input  type="text" id ="uname" name="uname"/>
	PassWord: <input id="pass" type="text" name="pass" />
	<button type="submit" id="btn" value="login">Login</button>
</form>
</body>
</html>