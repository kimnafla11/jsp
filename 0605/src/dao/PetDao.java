package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Pet;
import util.JdbcUtil;

public class PetDao {
	
	public void insert(Connection conn, Pet pet) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into pet (petName,price,weight,petImage,adoptDate)"//pet에 있는 객체를 불러옴
					+ " values(?,?,?,?,?)");//필드 5개니까 5개 물음표
			pstmt.setString(1, pet.getPetName());
			pstmt.setInt(2, pet.getPrice());
			pstmt.setDouble(3, pet.getWeight());
			pstmt.setString(4, pet.getPetImage());
			pstmt.setTimestamp(5, new Timestamp(pet.getAdoptDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Pet selectById(Connection conn, int petId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Pet pet = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from pet where petId = ?");
			pstmt.setInt(1, petId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				pet = new Pet(); 
				pet.setPetId(rs.getInt(1));
				pet.setPetName(rs.getString(2));
				pet.setPrice(rs.getInt(3));
				pet.setWeight(rs.getDouble(4));
				pet.setPetImage(rs.getString(5));
				pet.setAdoptDate(rs.getTimestamp(6));
				pet.setFav(rs.getInt(7));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return pet;
	}

	public List<Pet> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Pet pet = null; 
		List<Pet> pets = new ArrayList<Pet>();
		try {
			pstmt = conn.prepareStatement
			("select * from pet where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				pet = new Pet(); 
				pet.setPetId(rs.getInt(1));
				pet.setPetName(rs.getString(2));
				pet.setPrice(rs.getInt(3));
				pet.setWeight(rs.getDouble(4));
				pet.setPetImage(rs.getString(5));
				pet.setAdoptDate(rs.getTimestamp(6));
				pets.add(pet);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return pets;
	}
	
	public int update(Connection conn, Pet pet) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update pet set petname=?,price=?,weight=?,petimage=?,adoptdate=? "
					+ "   where petId=?");
			pstmt.setString(1, pet.getPetName());
			pstmt.setInt(2, pet.getPrice());
			pstmt.setDouble(3, pet.getWeight());
			pstmt.setString(4, pet.getPetImage());
			pstmt.setTimestamp(5, new Timestamp(pet.getAdoptDate().getTime()));
			pstmt.setInt(6, pet.getPetId());
			//petId가 제일 마지막인 이유는 sql문에서 where절의 petId가 가장 마지막에 있기 때문이다
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
	
	public int updateFav(Connection conn,int petId, int fav)//새로 추가한 거임 update를 복붙한거, 가져오는 파라미터는 petId, fav이며
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update pet set fav=?"
					+ "   where petId=?");//가져온 파라미터를 pet에 반영하는거임
			pstmt.setInt(1, fav);
			pstmt.setInt(2, petId);
			count = pstmt.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;
	}
	
	public int deleteById(Connection conn, int petId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from pet where petId = ?");
			pstmt.setInt(1, petId);
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
			rs = stmt.executeQuery("select count(*) from pet");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Pet> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Pet> petList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from pet order by fav desc");	//순서를 fav에 따라 내림차순으로 보여주기		
			rs  = pstmt.executeQuery(); 
			petList = new ArrayList<Pet>();
			while (rs.next()){
				Pet pet = new Pet();
				pet.setPetId(rs.getInt(1));
				pet.setPetName(rs.getString(2));
				pet.setPrice(rs.getInt(3));
				pet.setWeight(rs.getDouble(4));
				pet.setPetImage(rs.getString(5));
				pet.setAdoptDate(rs.getTimestamp(6));
				petList.add(pet);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return petList;
	}
}




















