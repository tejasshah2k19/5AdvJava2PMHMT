<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	ResultSet rs  =  (ResultSet)request.getAttribute("rs");

	while (rs.next()) {

		int userId = rs.getInt("userId");
		String fname = rs.getString("firstName");
		out.println(userId + " " + fname+"<br>");
	}
	%>
</body>
</html>