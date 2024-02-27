package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.Approval;
import com.helper.FactoryProvider;

public class ApprovalServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
			response.setContentType("text/html");		
			PrintWriter out=response.getWriter();
			
			//title,content fetch
			

			String name=request.getParameter("name");
			String gender=request.getParameter("gender");
			String disease=request.getParameter("disease");
			String date=request.getParameter("date");
			String status=request.getParameter("status");
			
			
			Approval p=new Approval(name, gender, disease, date, status);
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(p);
			tx.commit();
			
			out.print("<br><div style='text-align: center;'> <img src='img/profile.jpg'  alt='girs' width='350' height='350' > </div>");
			out.print("<br><h1 style='text-align:center;'>Reports Updated Successfully......!!</h1>");
			out.print("<h2 style='text-align:center;'><a href='Doctor.jsp'>Home</h2>");
			
			s.close();
			
	
		
	}

}

