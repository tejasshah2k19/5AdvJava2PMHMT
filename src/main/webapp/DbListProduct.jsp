<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>
<body>

	<%
	ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>
 

	<table border="1" class="table table-bordered table-hover">
		<thead class="bg-primary">
			<tr>
				<th>ProductName</th>
				<th>Category</th>
				<th>Price</th>
				<th>Qty</th>
				<th>Action</th>
				<th>Action</th>
			
			</tr>
		</thead>
		<tbody>

			<%
			while (rs.next()) {
				String productName = rs.getString("productName");
				Integer productId = rs.getInt("productId");
				String category = rs.getString("category");
				Integer price = rs.getInt("price");
				Integer qty = rs.getInt("qty");

				out.print("<tr>");
				out.print("<td>" + productName + "</td>");
				out.print("<td>" + category + "</td>");
				out.print("<td>" + price + "</td>");
				out.print("<td>" + qty + "</td>");
				out.print("<td><a href=DBDeleteProductServlet?productId="+productId+">DELETE</a></td>");
				out.print("<td><a href=DBEditProductServlet?productId="+productId+">EDIT</a></td>");
				
				

				out.print("</tr>");
			}
			%>



		</tbody>
	</table>
</body>
</html>