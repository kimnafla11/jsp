package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Student;
import util.JdbcUtil;

public class StudentDao {
	
	public void insert(Connection conn, Student student) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into student (stuName,stuDepart,stuAge,stuImg,stuDate)"//student에 있는 객체를 불러옴
					+ " values(?,?,?,?,?)");//필드 5개니까 5개 물음표
			pstmt.setString(1, student.getStuName());
			pstmt.setString(2, student.getStuDepart());
			pstmt.setInt(3, student.getStuAge());
			pstmt.setString(4, student.getStuImg());
			pstmt.setTimestamp(5, new Timestamp(student.getStuDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Student selectById(Connection conn, int studentId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Student student = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from student where studentId = ?");
			pstmt.setInt(1, studentId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				student = new Student(); 
				student.setStudentId(rs.getInt(1));
				student.setStuName(rs.getString(2));
				student.setStuDepart(rs.getString(3));
				student.setStuAge(rs.getInt(4));
				student.setStuImg(rs.getString(5));
				student.setStuDate(rs.getTimestamp(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return student;
	}

	public List<Student> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Student student = null; 
		List<Student> students = new ArrayList<Student>();
		try {
			pstmt = conn.prepareStatement
			("select * from student where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				student = new Student(); 
				student.setStudentId(rs.getInt(1));
				student.setStuName(rs.getString(2));
				student.setStuDepart(rs.getString(3));
				student.setStuAge(rs.getInt(4));
				student.setStuImg(rs.getString(5));
				student.setStuDate(rs.getTimestamp(6));
				students.add(student);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return students;
	}
	
	public int update(Connection conn, Student student) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update student set stuname=?,studepart=?,stuage=?,stuimg=?,studate=? "
					+ "   where studentId=?");
			pstmt.setString(1, student.getStuName());
			pstmt.setString(2, student.getStuDepart());
			pstmt.setInt(3, student.getStuAge());
			pstmt.setString(4, student.getStuImg());
			pstmt.setTimestamp(5, new Timestamp(student.getStuDate().getTime()));
			pstmt.setInt(6, student.getStudentId());
			//studentId가 제일 마지막인 이유는 sql문에서 where절의 studentId가 가장 마지막에 있기 때문이다
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
	
	public int deleteById(Connection conn, int studentId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from student where studentId = ?");
			pstmt.setInt(1, studentId);
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
			rs = stmt.executeQuery("select count(*) from student");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Student> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Student> studentList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from student");			
			rs  = pstmt.executeQuery(); 
			studentList = new ArrayList<Student>();
			while (rs.next()){
				Student student = new Student();
				student.setStudentId(rs.getInt(1));
				student.setStuName(rs.getString(2));
				student.setStuDepart(rs.getString(3));
				student.setStuAge(rs.getInt(4));
				student.setStuImg(rs.getString(5));
				student.setStuDate(rs.getTimestamp(6));
				studentList.add(student);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return studentList;
	}
	
}




















