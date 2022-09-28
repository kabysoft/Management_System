package com.lams.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lams.dto.StudentDto;
import com.lams.service.StudentService;


public class SearchStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	StudentService service = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int rollNumber = Integer.parseInt(request.getParameter("rollNumber:"))	;
	service = new StudentService();
	StudentDto dto = service.SearchStudent(rollNumber);
	request.setAttribute("dto", dto);
	request.getRequestDispatcher("./update_student.jsp").forward(request, response);
	
	}

}
