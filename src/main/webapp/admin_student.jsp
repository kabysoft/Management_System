<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Student Page</title>
</head>
<body>
<div><%@include file="header.html" %></div>
<div>

<div >
<center>
<h1>Welcome to </h1>
<h1>Student System Management</h1>
</center>
</div>
<div class="navbar">
 
  <a href="./admin_student.jsp">Student</a>
  
  
  <a href="./ViewAllStudentController">View-list</a>
  <a href="./add_student.jsp">Add New Student</a>
   <a href="./update_student.jsp">Update Student Info</a>
   <a href="./delete_student.jsp">Delete Student </a>
      
  </div>
 
</div>
</div>
<div><%@include file="footer.html" %></div>
</body>
</html>