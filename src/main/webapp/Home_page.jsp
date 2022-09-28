<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  

 
</style>   
<body>
<div><%@include file="header.html" %></div>
<div>
<div >
<center>
<h1>Welcome to Home Page</h1>
<h1>Learner's Academy management system</h1>

<h1>Welcome  <%=request.getAttribute("user")%>  To Admin Page;
</center>
</div>
</div>
<div><%@include file="footer.html" %></div>


</body>
</html>