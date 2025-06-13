<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date" buffer="8kb"
	autoFlush="true"%>

<%@page import="java.util.Scanner" isELIgnored="false" errorPage="MyError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	Date d = new Date();

	Scanner scr = null;
	%>

	FirstName => ${firstName}

	<%
	int a = 10;
	int b = 0;
	int c = a / b;
	%>

	<%=c %>

</body>
</html>