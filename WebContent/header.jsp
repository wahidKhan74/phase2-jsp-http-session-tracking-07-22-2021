<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header JSP Page</title>
</head>
<body>
	<h1> Welcome to ecomwebapp , http session tracking</h1>
	<nav>
		<a href="index.jsp">Home</a>   || 
		<a href="login.jsp">Login</a>  || 
		<a href="profile.jsp">Profile</a>  || 
		<a href="register.jsp">Register</a>  ||
		
		<%
			String userEmail = (String) session.getAttribute("email");
			if(userEmail !=null) {
				out.print("<a href='logout.jsp'>Logout</a>	  || ");
			}
		%>
		
	</nav>
</body>
</html>