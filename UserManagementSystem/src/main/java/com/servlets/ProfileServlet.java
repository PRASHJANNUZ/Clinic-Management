package com.servlets;

import java.io.IOException;  
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.*;
import com.helper.FactoryProvider;

public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			
			//title,content fetch
			
			String name=request.getParameter("name");
			String password=request.getParameter("email");
			String email=request.getParameter("password");
			String type=request.getParameter("type");
			
			User p=new User(name, password, email, type);
			

			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(p);
			tx.commit();
			
			out.print("<br><div style='text-align: center;'> <img src='img/profile.jpg'  alt='girs' width='350' height='350' > </div>");
			out.print("<br><h1 style='text-align:center;'>Registerd Successfully......!!</h1>");
			
			if(type.equals("Patient"))
			{
				System.out.println("Patient.......");
				out.print("<h1 style='text-align:center;'><a href='Patient.jsp'>Home Page</h1>");
			}
			else if(type.equals("Receptionist")) {
				
				System.out.println("Receptionist...........");
				out.print("<h1 style='text-align:center;'><a href='Receptionist.jsp'>Home Page</h1>");
			}
			else if(type.equals("Doctor")) {
				
				System.out.println("Doctor............");
				out.print("<h1 style='text-align:center;'><a href='Doctor.jsp'>Home Page</h1>");
			}
			s.close();
			
	
		
	}

}
