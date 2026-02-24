package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO {
	public CustomerBean checkLogin(String cname,String cpwd)
	{
		CustomerBean cb=null;
		try
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where uname=? and pword=?");
			pstmt.setString(1,cname);
			pstmt.setString(2,cpwd);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				cb=new CustomerBean();
				cb.setU_name(rs.getString(1));
				cb.setP_word(rs.getString(2));
				cb.setF_name(rs.getString(3));
				cb.setL_name(rs.getString(4));
				cb.setC_add(rs.getString(5));
				cb.setC_mid(rs.getString(6));
				cb.setC_phno(rs.getString(7));

			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cb;
	}
}
