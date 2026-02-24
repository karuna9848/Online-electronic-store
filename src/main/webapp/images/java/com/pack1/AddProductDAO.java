package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int insertproduct(ProductBean pb) throws Exception
	{
		int rowcount=0;
		try
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareStatement("insert into product values (?,?,?,?,?)");
			pstmt.setString(1,pb.getP_code());
			pstmt.setString(2,pb.getP_name());
			pstmt.setString(3,pb.getP_company());
			pstmt.setString(4,pb.getP_price());
			pstmt.setString(5,pb.getP_qty());
			rowcount=pstmt.executeUpdate();

		}
		catch(Exception e)
		{
			/*e.printStackTrace();*/
			throw e;
		}
		return rowcount;
	}
}
