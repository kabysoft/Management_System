package com.lams.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lams.service.StudentService;

//@WebServlet("/DeleteStudentController")
public class DeleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	StudentService service= null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollNumber = Integer.parseInt(request.getParameter("rollNumber:"));
		service = new StudentService();
		boolean status = service.removeStudent(rollNumber);
		//System.out.println("Con " +status);
		if(status == false) {
			String msg ="Student  " + rollNumber + " Deleted successfuly";
			response.sendRedirect("./delete_student.jsp?message="+msg);
		}
	
	}

}
