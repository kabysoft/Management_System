<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<style type="text/css">
.container {
background-color:blue;
color:red;

}


</style>
<body>

<script type="text/javascript">

function doV5alidation(){


	
	var rollNumber = document.forms ["student_form"]["roll_number"].value;
	var name = document.forms ["student_form"]["name"].value;
	var course = document.forms ["student_form"]["course"].value;
	return false;
	var rollNumberStatus;
	var nameStatus;
	var courseStatus;
	var rollNumberMsg;
	var nameMessage
	var courseMessage;
	
	
		if(rollNumber ==""){
			rollNumberStatus = false;
			rollNumberMsg = "*Roll Number should not missing"
		document.getElementById("rollNumberMsg").innerHTML = rollNumberMsg;
		}
	if(name ==""){
			nameStatus=false;
			nameMsg = "*Name should not missing"
			document.getElementById("nameMsg").innerHTML = nameMsg;
			
		}
		if(course ==""){
			courseStatus=false;
			courseMsg = "*course should not missing"
			document.getElementById("courseMsg").innerHTML = courseMsg;
	}
	if(rollNumberStatus == false || nameStatus == false || courseStatus == false) {
		return true;
	}
	
	 
}

</script>
<%
String msg = (String) request.getAttribute("msg");
if(msg==null){
	
	msg="Insert your Data";
	
}

%>
<div><%@include file="header.html" %></div>

<div class = "container">
<center>
<h1> Add Student</h1>
<h4 style="color:yellow"><%=msg %></h4>

<form action="./AddStudentController" name="student_form" method="post" onsubmit ="return doValidation()">
<table>
<tr><td>Student Roll Number</td> <td><input type="text" name="roll_number" required><span id="rollNumberMsg"></span></td></tr>
<tr><td>Student Name</td> <td><input type="text" name="name" required><span id="nameMsg"></span></td></tr>
<tr><td>Gender</td><td><input  name="gender" checked="checked" value="male"type="radio">Male &nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>Student DOB</td> <td><input type="date" name="dob"><span id="tdob"></span></td></tr>
<tr><td>Course</td><td><select name = "course" required>
<option value="">--Select--</option>
<option value="java">JAVA</option>
<option value="java">HTML</option>
<option value="java">ANGULAR</option>
</select><span  id = "courseMsg"></</span></td></tr>
<tr><td><input type="submit" value="Add Student"/></td><td><input type="button" value="Cancel"></td></tr>

</table>

</form>
</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
</html>