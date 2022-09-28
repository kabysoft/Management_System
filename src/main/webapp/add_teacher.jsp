<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Teacher</title>
</head>
<style type="text/css">
.container {
background-color:gray;
color:white;

}


</style>
<body>

<script type="text/javascript">

function doValidation(){


	
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
<div><%@include file="header.html" %></div>

<div class = "container">
<center>
<h1> Add Teacher </h1>

<form action="./AddTeacherController" name="teacher_form" method="post" onsubmit ="return doValidation()">
<table>
<tr><td>Teacher Emp_id</td> <td><input type="text" name="roll_number"><span id="rollNumberMsg"></span></td></tr>
<tr><td>Teacher First Name</td> <td><input type="text" name="roll_number"><span id="rollNumberMsg"></span></td></tr>
<tr><td>Teacher Last Name </td> <td><input type="text" name="lname"><span id="lnameMsg"></span></td></tr>
<tr><td>Gender</td><td><input  name="gender" checked="checked" value="male"type="radio">Male &nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>Teacher DOB</td> <td><input type="date" name="dob"><span id="tdob"></span></td></tr>
<tr><td>Subject</td><td><select name = "course">
<option value="">--Select--</option>
<option value="java">JAVA</option>
<option value="java">HTML</option>
<option value="java">ANGULAR</option>
</select><span  id = "courseMsg"></</span></td></tr>

<tr><td>Class</td><td><select name = "class">
<option value="">--Select--</option>
<option value="cl1">Class 01</option>
<option value="cl2">Class 02</option>
<option value="cl3">Class 03</option>
</select><span  id = "classMsg"></</span></td></tr>

<tr><td><input type="submit" value="Add Teacher"/></td><td><input type="button" value="Cancel"></td></tr>

</table>

</form>
</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
<