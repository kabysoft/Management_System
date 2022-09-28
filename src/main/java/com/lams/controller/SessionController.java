package com.lams.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		//super.service(arg0, arg1);
		
		String username=(String)request.getParameter(("username"));
		String password=(String)request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		System.out.println("user name "+username);
		System.out.println("Password "+password);
		
		System.out.println("Is New  "+session.isNew());
		System.out.println("Session ID  "+session.getId());
		System.out.println("Session Creation    "+session.getCreationTime());
		System.out.println("SessionLast Access Time    "+session.getLastAccessedTime());
		
		
		
		
		ServletConfig sconfig=getServletConfig();
		ServletContext context = sconfig.getServletContext();
		
	    request.setAttribute("user", username);
		//session.setAttribute("user2", username);
		//context.setAttribute("user3", username);
		
			
				String msg = "Authentification Error Try Again ";
				RequestDispatcher rd = request.getRequestDispatcher("./Home_page.jsp");
				rd.forward(request, response);
			
		
		
				}		
	}
	


