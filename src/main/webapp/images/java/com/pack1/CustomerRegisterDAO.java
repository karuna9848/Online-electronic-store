package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO {
	public int insertcustomerdata(CustomerBean cb)
	{
		int rowcount=0;
		try
		{

			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			pstmt.setString(1,cb.getU_name());
			pstmt.setString(2,cb.getP_word());
			pstmt.setString(3,cb.getF_name());
			pstmt.setString(4,cb.getL_name());
			pstmt.setString(5,cb.getC_add());
			pstmt.setString(6,cb.getC_mid());
			pstmt.setString(7,cb.getC_phno());
			rowcount=pstmt.executeUpdate();
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}

		return rowcount;

	}
}
