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

public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
			response.setContentType("text/html");		
			PrintWriter out=response.getWriter();
			
			//title,content fetch
			
	
			
			String A=request.getParameter("age");
			int age = Integer.parseInt(A);
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String gender=request.getParameter("gender");
			String disease=request.getParameter("disease");
			String address=request.getParameter("address");
			String phoneno=request.getParameter("phoneno");
			String doctorname=request.getParameter("doctorname");
			String appointmentdate=request.getParameter("appointmentdate");
			
			
			
			
			Patient p=new Patient(age, name, email, gender, disease, address, phoneno, doctorname, appointmentdate);
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(p);
			tx.commit();
			
			out.print("<br><div style='text-align: center;'> <img src='img/profile.jpg'  alt='girs' width='350' height='350' > </div>");
			out.print("<br><h1 style='text-align:center;'>Appointment Requested Successfully......!!</h1>");
			out.print("<p style='text-align:center;'>You'll get notified by Email or calls after the Approval, Thank You.</p>");
			out.print("<h2 style='text-align:center;'><a href='Patient.jsp'>Home</h2>");
			out.print("<h2 style='text-align:center;'><a href='index.jsp'>Logout</h2>");
			
			s.close();
			
	
		
	}

}
