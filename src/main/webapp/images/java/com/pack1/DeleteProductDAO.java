package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO {
	public int deleteProduct(String pcode)
	{
		int rowcount=0;

		try
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareCall("delete from product where pcode=?");
			pstmt.setString(1,pcode);
			rowcount=pstmt.executeUpdate();

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowcount;
	}
}