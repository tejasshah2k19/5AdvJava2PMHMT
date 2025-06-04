<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.error{
	color: red;
}
</style>
</head>
<body>
<h2>InputEmp</h2>
<form action="EmpServlet" method="post">
	Name:<input type="text" name="name"/><span class="error">${nameError}</span><br><br> 
	City: <input type="text" name="city"/><span class="error">${cityError }</span><br><br> 
	
	Email : <input type="text" name="email"/>${emailError}<br><br> 
	Password :  <input type="password" name="password"/>${passwordError}<br><br> 
	ConfirmPassword : <input type="password" name="confirmPassword"/>${confirmPasswordError}<br><Br>
	
	  
	
	<input type="submit" value="Submit"/>
</form>
</body>
</html>