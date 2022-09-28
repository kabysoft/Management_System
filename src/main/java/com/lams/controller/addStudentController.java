package com.lams.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lams.service.StudentService;
import com.lams.vo.StudentVo;

@WebServlet ("/AddStudentController")
public class addStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	StudentVo studentVo = null;
	StudentService studentService = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get data from ui
		
		int rollno = Integer.parseInt(request.getParameter("roll_number"));
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
		
		studentVo = new StudentVo();
		studentVo.setRollno(rollno);
		studentVo.setName(name);
		studentVo.setGender(gender);
		studentVo.setCourse(course);
		
		studentService = new StudentService();
		int i = studentService.saveStudent(studentVo);
		
		if(1!=0) {
			String msg ="Student Successfuly Added";
			request.setAttribute("msg", msg);
		request.getRequestDispatcher("./add_student.jsp").forward(request, response);
		}
		
		
	
		
		
	}

}
