package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Food;
import util.JdbcUtil;

public class FoodDao {
	
	public void insert(Connection conn, Food food) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into food (foodName,foodType,foodPrice,foodKcal,foodImage,foodDate)"//food에 있는 객체를 불러옴
					+ " values(?,?,?,?,?,?)");
			pstmt.setString(1, food.getFoodName());
			pstmt.setString(2, food.getFoodType());
			pstmt.setInt(3, food.getFoodPrice());
			pstmt.setDouble(4, food.getFoodKcal());
			pstmt.setString(5, food.getFoodImage());
			pstmt.setTimestamp(6, new Timestamp(food.getFoodDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Food selectById(Connection conn, int foodId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Food food = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from food where foodId = ?");
			pstmt.setInt(1, foodId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				food = new Food(); 
				food.setFoodId(rs.getInt(1));
				food.setFoodName(rs.getString(2));
				food.setFoodType(rs.getString(3));
				food.setFoodPrice(rs.getInt(4));
				food.setFoodKcal(rs.getDouble(5));
				food.setFoodImage(rs.getString(6));
				food.setFoodDate(rs.getTimestamp(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return food;
	}

	public List<Food> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Food food = null; 
		List<Food> foods = new ArrayList<Food>();
		try {
			pstmt = conn.prepareStatement
			("select * from food where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				food = new Food(); 
				food.setFoodId(rs.getInt(1));
				food.setFoodName(rs.getString(2));
				food.setFoodType(rs.getString(3));
				food.setFoodPrice(rs.getInt(4));
				food.setFoodKcal(rs.getDouble(5));
				food.setFoodImage(rs.getString(6));
				food.setFoodDate(rs.getTimestamp(7));
				foods.add(food);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return foods;
	}
	
	public int update(Connection conn, Food food) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update food set foodName=?,foodType=?,foodPrice=?,foodKcal=?,foodImage=?,foodDate=? "
					+ "   where foodId=?");
			pstmt.setString(1, food.getFoodName());
			pstmt.setString(2, food.getFoodType());
			pstmt.setInt(3, food.getFoodPrice());
			pstmt.setDouble(4, food.getFoodKcal());
			pstmt.setString(5, food.getFoodImage());
			pstmt.setTimestamp(6, new Timestamp(food.getFoodDate().getTime()));
			pstmt.setInt(7, food.getFoodId());
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
		
	public int deleteById(Connection conn, int foodId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from food where foodId = ?");
			pstmt.setInt(1, foodId);
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
			rs = stmt.executeQuery("select count(*) from food");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Food> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Food> foodList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from food");		
			rs  = pstmt.executeQuery(); 
			foodList = new ArrayList<Food>();
			while (rs.next()){
				Food food = new Food();
				food.setFoodId(rs.getInt(1));
				food.setFoodName(rs.getString(2));
				food.setFoodType(rs.getString(3));
				food.setFoodPrice(rs.getInt(4));
				food.setFoodKcal(rs.getDouble(5));
				food.setFoodImage(rs.getString(6));
				food.setFoodDate(rs.getTimestamp(7));
				foodList.add(food);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return foodList;
	}
}




















