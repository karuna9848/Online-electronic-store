package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/reg")
public class CustomerRegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		CustomerBean cbean=new CustomerBean();
		cbean.setU_name(req.getParameter("uname"));
		cbean.setP_word(req.getParameter("upword"));
		cbean.setF_name(req.getParameter("ufname"));
		cbean.setL_name(req.getParameter("lname"));
		cbean.setC_add(req.getParameter("add"));
		cbean.setC_mid(req.getParameter("mid"));
		cbean.setC_phno(req.getParameter("mob"));

		int rowcount=new CustomerRegisterDAO().insertcustomerdata(cbean);
		if(rowcount==0)
		{
			req.setAttribute("msg","Registration failed! Try Again");
			req.getRequestDispatcher("CustomerRegoster.html").forward(req,res);
		}
		else
		{
			req.setAttribute("msg","registration completed");
			req.getRequestDispatcher("Cregister.jsp").forward(req,res);
		}
	}

}
