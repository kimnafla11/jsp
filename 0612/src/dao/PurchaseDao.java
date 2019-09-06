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
			("insert into purchasefood (foodId,foodName,foodNum,totalPrice,totalKcal,pDate,purchaser)"//purchase에 있는 객체를 불러옴
					+ " values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, purchase.getFoodId());
			pstmt.setString(2, purchase.getFoodName());
			pstmt.setInt(3, purchase.getFoodNum());
			pstmt.setInt(4, purchase.getTotalPrice());
			pstmt.setDouble(5, purchase.getTotalKcal());
			pstmt.setTimestamp(6, new Timestamp(purchase.getpDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.setString(7, purchase.getPurchaser());
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
					("select * from purchasefood ");			
			rs  = pstmt.executeQuery(); 
			purchaseList = new ArrayList<Purchase>();
			while (rs.next()){
				Purchase purchase = new Purchase();
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setFoodId(rs.getInt(2));
				purchase.setFoodName(rs.getString(3));
				purchase.setFoodNum(rs.getInt(4));
				purchase.setTotalPrice(rs.getInt(5));
				purchase.setTotalKcal(rs.getDouble(6));
				purchase.setpDate(rs.getTimestamp(7));
				purchase.setPurchaser(rs.getString(8));
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














