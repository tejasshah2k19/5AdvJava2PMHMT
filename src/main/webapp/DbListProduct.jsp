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
	ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>


	<%
		while(rs.next()){
			String productName = rs.getString("productName");
			Integer productId = rs.getInt("productId");
			String category = rs.getString("category");
			Integer price = rs.getInt("price");
			Integer qty = rs.getInt("qty"); 
			
			out.print(productId+" "+productName+" "+category+" "+price+" "+qty+"<Br>");
		}
	%>

</body>
</html>