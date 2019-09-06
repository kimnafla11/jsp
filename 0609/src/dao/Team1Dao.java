package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Team1;
import util.JdbcUtil;

public class Team1Dao {
	
	public void insert(Connection conn, Team1 team1) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into team1 (studentId,stuName,subject,tDate,teamPerson)"//team1에 있는 객체를 불러옴
					+ " values(?,?,?,?,?)");
			pstmt.setInt(1, team1.getStudentId());
			pstmt.setString(2, team1.getStuName());
			pstmt.setString(3, team1.getSubject());
			pstmt.setTimestamp(4, new Timestamp(team1.gettDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.setString(5, team1.getTeamPerson());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Team1> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Team1> team1List = null;
		try {
			pstmt = conn.prepareStatement
					("select * from team1 ");			
			rs  = pstmt.executeQuery(); 
			team1List = new ArrayList<Team1>();
			while (rs.next()){
				Team1 team1 = new Team1();
				team1.setTeamId(rs.getInt(1));
				team1.setStudentId(rs.getInt(2));
				team1.setStuName(rs.getString(3));
				team1.setSubject(rs.getString(4));
				team1.settDate(rs.getTimestamp(5));
				team1.setTeamPerson(rs.getString(6));
				team1List.add(team1);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return team1List;
	}
}














