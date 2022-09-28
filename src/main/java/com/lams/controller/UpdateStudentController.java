package com.lams.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lams.service.StudentService;
import com.lams.vo.StudentVo;


public class UpdateStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	StudentVo studentVo = null;
	StudentService studentService = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rollno = Integer.parseInt(request.getParameter("roll_number"));
		System.out.println("---------" + request.getParameter("roll_number"));
		String name = request.getParameter("name");
		System.out.println("---------" + request.getParameter("name"));
		String gender = request.getParameter("gender");
		System.out.println("---------" + request.getParameter("gender"));
		String course = request.getParameter("course");
		System.out.println("---------" + request.getParameter("course"));
		
		studentVo = new StudentVo();
		studentVo.setRollno(rollno);
		studentVo.setName(name);
		studentVo.setGender(gender);
		studentVo.setCourse(course);
		
		studentService = new StudentService();
		int i = studentService.modifyStudent(studentVo);
		if (i!=0) {
			String msg = "successfuly Updated";
			response.sendRedirect("./update_student.jsp?msg=" +msg);
		
		}else {
			String msgerr = "Try Again Failed to Update Record";
			response.sendRedirect("./update_student.jsp?msg=" +msgerr);
		}
		
	}

}
