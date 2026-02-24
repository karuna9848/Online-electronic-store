package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/alog")
public class AdminLoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		AdminLogin DAOobj=new AdminLogin();
		AdminBean abean=DAOobj.checkAdminLogin(req.getParameter("aname"),req.getParameter("apwd"));
		if(abean==null)
		{
			req.setAttribute("msg", "invalid Login credentials");
			req.getRequestDispatcher("AiLd.jsp").forward(req, res);
		}
		else
		{
			HttpSession session=req.getSession();
			session.setAttribute("AdminBean",abean);
			req.getRequestDispatcher("Adminhome.jsp").forward(req, res);

		}
	}
}