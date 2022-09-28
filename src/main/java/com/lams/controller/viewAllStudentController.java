package com.lams.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.lams.dto.StudentDto;
import com.lams.service.StudentService;

@WebServlet("/ViewAllStudentController")
public class viewAllStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentService service = new StudentService();
		List<StudentDto> list = service.getAllStudents();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("./view_all_student.jsp").forward(request, response);
		
	}

}
