<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
   <%@page import="com.lams.dto.StudentDto" %> 
    <%@page import="java.util.*" %>
    <%@page import="java.util.List" %>
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Student</title>
</head>
<body>

<%
List<StudentDto> list = (ArrayList<StudentDto>)request.getAttribute("list");

%>

<div><%@include file="header.html" %></div>
<div>
<center>
<h1> View All Students</h1>
<table border = "1px">
<thead>

<tr><td> Roll Number </td><td>Name Of Student</td><td>Gender Of Student</td><td>Course</td></tr>



</thead>
<%
for(StudentDto d : list){%>

<tr><td><%=d.getRollno() %></td><td><%=d.getName() %></td><td><%=d.getGender()%></td><td><%=d.getCourse()%></td></tr>	

<%}

%>

</table>


</center>

</div>
<div><%@include file="footer.html" %></div>

</body>
</html>