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
			("insert into purchase (userId, movieName, totalPrice)"//purchase에 있는 객체를 불러옴
					+ " values(?,?,?)");//필드 3개니까 3개 물음표
			pstmt.setString(1, purchase.getUserId());
			pstmt.setString(2, purchase.getMovieName());
			pstmt.setInt(3, purchase.getTotalPrice());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	/*
	public Purchase selectById(Connection conn, int purchaseId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Purchase purchase = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				purchase = new Purchase(); 
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setPurchaseName(rs.getString(2));
				purchase.setMaker(rs.getString(3));
				purchase.setPrice(rs.getInt(4));
				purchase.setPurchaseImage(rs.getString(5));
				purchase.setOpenDate(rs.getTimestamp(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return purchase;
	}

	public List<Purchase> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Purchase purchase = null; 
		List<Purchase> purchases = new ArrayList<Purchase>();
		try {
			pstmt = conn.prepareStatement
			("select * from purchase where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				purchase = new Purchase(); 
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setPurchaseName(rs.getString(2));
				purchase.setMaker(rs.getString(3));
				purchase.setPrice(rs.getInt(4));
				purchase.setPurchaseImage(rs.getString(5));
				purchase.setOpenDate(rs.getTimestamp(6));
				purchases.add(purchase);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return purchases;
	}
	
	public int update(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update purchase set purchasename=?,maker=?,price=?,purchaseimage=?,opendate=? "
					+ "   where purchaseId=?");
			pstmt.setString(1, purchase.getPurchaseName());
			pstmt.setString(2, purchase.getMaker());
			pstmt.setInt(3, purchase.getPrice());
			pstmt.setString(4, purchase.getPurchaseImage());
			pstmt.setTimestamp(5, new Timestamp(purchase.getOpenDate().getTime()));
			pstmt.setInt(6, purchase.getPurchaseId());
			//purchaseId가 제일 마지막인 이유는 sql문에서 where절의 purchaseId가 가장 마지막에 있기 때문이다
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
	
	public int deleteById(Connection conn, int purchaseId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			count = pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from purchase");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
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
				purchase.setPurchaseName(rs.getString(2));
				purchase.setMaker(rs.getString(3));
				purchase.setPrice(rs.getInt(4));
				purchase.setPurchaseImage(rs.getString(5));
				purchase.setOpenDate(rs.getTimestamp(6));
				purchaseList.add(purchase);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return purchaseList;
	}*/
}




















