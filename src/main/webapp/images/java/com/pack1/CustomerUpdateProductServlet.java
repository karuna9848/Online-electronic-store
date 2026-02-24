package com.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cupdate")
public class CustomerUpdateProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);;
		}
		else
		{			
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");//list is written in buy page
			String pcode=req.getParameter("pcode");
			Iterator<ProductBean> i=al.iterator();
			ProductBean pb=null;
			while(i.hasNext())
			{
				pb=i.next();
				if(pcode.equals(pb.getP_code()))
				{
					break;

				}

			}

			String Pqty= req.getParameter("pqty");
			String reqno= req.getParameter("prn");
			String Pprice= req.getParameter("pprice");
			int p=Integer.parseInt(Pqty)-Integer.parseInt(reqno);	
			int t_price=Integer.parseInt(reqno)*Integer.parseInt(Pprice);
			String p_qty=String.valueOf(p);
			pb.setP_qty(p_qty);
			int rowCount= new CustomerUpdateProductDAO().updateProduct(pb);
			if(rowCount>0)
			{
				req.setAttribute("msg", "You have charged "+t_price+" /rs");
				req.getRequestDispatcher("OrderConformed.jsp").forward(req, res);
			}
			else
			{
				throw new RuntimeException("Product Inventory Not Updated");
			}

		}
	}
}