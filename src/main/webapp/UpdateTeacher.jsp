<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.lams.dto.StudentDto" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update_teacher</title>
</head>
   
<body>



<div><%@include file="header.html" %></div>
<div>

<center>
<div class ="search">
<h1> Search For Teacher </h1>
<form action="./SearchTeacherController" method="post">
<pre>
Teacher Emp ID :<input type="text" name="rollNumber:" required/>
</pre>
<pre>
<h1> Admin UpDate Teacher </h1>
<input type="submit" value="Search"/>
</pre>

</form>
</div>
<div> 

<form action="./UpdateStudentController" name="student_form" method="post" ">
<table>

<div style=color:green>
<tr><td>Teacher Emp ID</td> <td><input type="text" name="roll_number" required   ><span id="rollNumberMsg"></span></td></tr>
<tr><td>Teacher  First Name</td> <td><input type="text" fname="name" required   ><span id="fnameMsg"></span></td></tr>
<tr><td>Teacher Last Name </td> <td><input type="text" lname="name" required   ><span id="lnameMsg"></span></td></tr>
<tr><td>Gender</td><td><input  name="gender" required" type="text"/></td></tr>
<tr><td>Course</td><td><input name="course"required  " type="text" /></td></tr>
<tr><td>Classe</td><td><input name="class"required  " type="text" /></td></tr>
<tr><td><input type="submit" value="--     Update     --"/></td><td><input type="button" value="Cancel"/></td></tr>

</table>
</div>
</form>

</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
</html>


</div>
<div><%@include file="footer.html" %></div>
</body>
</html>