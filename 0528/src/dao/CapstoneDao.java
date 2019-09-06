package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Capstone;
import util.JdbcUtil;

public class CapstoneDao {
	
	public void insert(Connection conn, Capstone capstone)
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into capstone values(?,?,?,?,?)");
			
			pstmt.setInt(1, capstone.getTeamId());
			pstmt.setString(2, capstone.getTeamName());
			pstmt.setString(3, capstone.getMember().toString());
			pstmt.setInt(4, capstone.getNumPerson());
			pstmt.setTimestamp(5, new Timestamp(capstone.getmDate().getTime()));
			pstmt.executeUpdate(); 
			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}

	public List<Capstone> selectList(Connection conn) //사용자 리스트를 보기 위한거
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Capstone> capstoneList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from capstone ");
			rs  = pstmt.executeQuery(); 
			capstoneList = new ArrayList<Capstone>();
			while (rs.next()){
				Capstone capstone = new Capstone();
				capstone.setTeamId(rs.getInt(1));
				capstone.setTeamName(rs.getString(2));
				//capstone.setMember(rs.getString(3));
				capstone.setNumPerson(rs.getInt(4));
				capstone.setmDate(rs.getTimestamp(5));
				capstoneList.add(capstone);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return capstoneList;
	}
}

















