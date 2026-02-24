package com.pack1;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/clogin")
public class CustomerLoginServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		CustomerLoginDAO DAOobj=new CustomerLoginDAO();
		CustomerBean cb=DAOobj.checkLogin(req.getParameter("uname"),req.getParameter("pword"));
		if(cb==null)
		{
			req.setAttribute("msg","First you need to register");
			req.getRequestDispatcher("Clerror.jsp").forward(req, res);
		}
		else
		{
			HttpSession session=req.getSession();
			session.setAttribute("CustomerBean",cb);
			req.getRequestDispatcher("Chome.jsp").forward(req, res);

		}
	}
}


