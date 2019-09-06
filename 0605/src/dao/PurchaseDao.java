package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Purchase;
import util.JdbcUtil;

public class PurchaseDao {
	
	public void insert(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into purchasepet (petId,petName,petNum,totalPrice,pDate,purchaser)"//purchase에 있는 객체를 불러옴
					+ " values(?,?,?,?,?,?)");
			pstmt.setInt(1, purchase.getPetId());
			pstmt.setString(2, purchase.getPetName());
			pstmt.setInt(3, purchase.getPetNum());
			pstmt.setDouble(4, purchase.getTotalPrice());
			pstmt.setTimestamp(5, new Timestamp(purchase.getpDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.setString(6, purchase.getPurchaser());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Purchase> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Purchase> purchaseList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from purchase ");			
			rs  = pstmt.executeQuery(); 
			purchaseList = new ArrayList<Purchase>();
			while (rs.next()){
				Purchase purchase = new Purchase();
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setPetId(rs.getInt(2));
				purchase.setPetName(rs.getString(3));
				purchase.setPetNum(rs.getInt(4));
				purchase.setTotalPrice(rs.getDouble(5));
				purchase.setpDate(rs.getTimestamp(6));
				purchase.setPurchaser(rs.getString(7));
				purchaseList.add(purchase);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return purchaseList;
	}
}














