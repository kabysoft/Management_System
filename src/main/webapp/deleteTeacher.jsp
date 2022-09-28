<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Teacher</title>
</head>
<body>

<div><%@include file="header.html" %></div>
<div>

<center>
<h1> Delete Teacher</h1>

<form action="./DeleteTeacherControler" method="delete">
<pre>
Teacher Emp ID :<input type="text" name="Emp_Id"/>
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