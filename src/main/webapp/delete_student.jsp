<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>
</head>
<body>
<% 

String msg = request.getParameter("message");
if(msg == null){
	msg = "";
}
%>
<div><%@include file="header.html" %></div>
<div>

<center>
<h1> Delete Student</h1>
<h4 style="color:green"><%=msg %></h4>
<form action="./DeleteStudentController" method="delete">
<pre>
Student RollNumber :<input type="text" name="rollNumber:"/>
</pre>
<pre>
<input type="submit" value="Delete"/>
</pre>

</form>
</center>



</div>
<div><%@include file="footer.html" %></div>
</body>
</html>