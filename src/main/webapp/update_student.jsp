<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.lams.dto.StudentDto" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update_student</title>
</head>
<body>

<%

StudentDto dto = (StudentDto)request.getAttribute("dto");
System.out.println(dto);

if(dto==null){
	dto = new StudentDto();
	dto.setRollno(0);
	dto.setName("");
	dto.setGender("");
	dto.setCourse("");
}
String msg = request.getParameter("msg");
if(msg == null){
	msg="";
}

String msgerr = "Try Again Failed to Update Record";
if(msgerr == null){
	msgerr = "";
}
%>

<div><%@include file="header.html" %></div>
<div>

<center>
<div class ="search">
<h1> Search for Student </h1>
<form action="./SearchStudentController" method="post">
<pre>
Student RollNumber :<input type="text" name="rollNumber:" required/>
</pre>
<pre>
<h1> Admin UpDate Student </h1>
<input type="submit" value="Search"/>
</pre>

</form>
</div>
<div> 
<h4 style=color:green> <%=msg %></h4>
<form action="./UpdateStudentController" name="student_form" method="post" ">
<table>


<tr><td>Student Roll Number</td> <td><input type="text" name="roll_number" required value = <%=dto.getRollno() %>  ><span id="rollNumberMsg"></span></td></tr>
<tr><td>Student Name</td> <td><input type="text" name="name" required value = <%=dto.getName() %> ><span id="nameMsg"></span></td></tr>
<tr><td>Gender</td><td><input  name="gender" required value="<%=dto.getGender() %>" type="text"/></td></tr>
<tr><td>Course</td><td><input name="course"required  value="<%=dto.getCourse() %>" type="text" /></td></tr>
<tr><td><input type="submit" value="--     Update     --"/></td><td><input type="button" value="Cancel"/></td></tr>

</table>

</form>

</div>
</center>



</div>
<div><%@include file="footer.html" %></div>
</body>
</html>


</div>
<div><%@include file="footer.html" %></div>
</body>
</html>