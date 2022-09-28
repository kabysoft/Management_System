<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Subject</title>
</head>

<div><%@include file="header.html" %></div>

<div class = "container">
<center>
<h1> Admin Manage Subjects </h1>

<form action="./AddSubjectController" name="subjectform_form" method="post" onsubmit ="return doValidation()">
<table>
<tr><td>Subject_ID</td> <td><input type="text" name="roll_number"><span id="rollNumberMsg"></span></td></tr>
<tr><td>Subject Name </td> <td><input type="text" name="roll_number"><span id="rollNumberMsg"></span></td></tr>


<tr><td>Class</td><td><select name = "class">
<option value="">--Select--</option>
<option value="cl1">Class 01</option>
<option value="cl2">Class 02</option>
<option value="cl3">Class 03</option>
</select><span  id = "classMsg"></</span></td></tr>

<tr><td><input type="submit" value="Add Subject"/></td><td><input type="button" value="Cancel"></td></tr>

</table>

</form>
</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
<