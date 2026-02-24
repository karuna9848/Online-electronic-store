package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerUpdateProductDAO
{
	public int updateProduct(ProductBean pb)
	{
		int rowCount=0;
		try 
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareStatement("update product set  pqty=? where pcode=?");

			pstmt.setString(1,pb.getP_qty());
			pstmt.setString(2,pb.getP_code());
			rowCount=pstmt.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}