package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Movie;
import util.JdbcUtil;

public class MovieDao {
	
	public void insert(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into movie (moviename,maker,price,movieimage,opendate)"//movie에 있는 객체를 불러옴
					+ " values(?,?,?,?,?)");//필드 5개니까 5개 물음표
			pstmt.setString(1, movie.getMovieName());
			pstmt.setString(2, movie.getMaker());
			pstmt.setInt(3, movie.getPrice());
			pstmt.setString(4, movie.getMovieImage());
			pstmt.setTimestamp(5, new Timestamp(movie.getOpenDate().getTime()));
			//date타입은 setTimestamp로 씀
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Movie selectById(Connection conn, int movieId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Movie movie = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from movie where movieId = ?");
			pstmt.setInt(1, movieId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				movie = new Movie(); 
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setMovieImage(rs.getString(5));
				movie.setOpenDate(rs.getTimestamp(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movie;
	}

	public List<Movie> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Movie movie = null; 
		List<Movie> movies = new ArrayList<Movie>();
		try {
			pstmt = conn.prepareStatement
			("select * from movie where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				movie = new Movie(); 
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setMovieImage(rs.getString(5));
				movie.setOpenDate(rs.getTimestamp(6));
				movies.add(movie);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movies;
	}
	
	public int update(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update movie set moviename=?,maker=?,price=?,movieimage=?,opendate=? "
					+ "   where movieId=?");
			pstmt.setString(1, movie.getMovieName());
			pstmt.setString(2, movie.getMaker());
			pstmt.setInt(3, movie.getPrice());
			pstmt.setString(4, movie.getMovieImage());
			pstmt.setTimestamp(5, new Timestamp(movie.getOpenDate().getTime()));
			pstmt.setInt(6, movie.getMovieId());
			//movieId가 제일 마지막인 이유는 sql문에서 where절의 movieId가 가장 마지막에 있기 때문이다
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
	
	public int deleteById(Connection conn, int movieId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from movie where movieId = ?");
			pstmt.setInt(1, movieId);
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
			rs = stmt.executeQuery("select count(*) from movie");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Movie> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Movie> movieList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from movie ");			
			rs  = pstmt.executeQuery(); 
			movieList = new ArrayList<Movie>();
			while (rs.next()){
				Movie movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setMovieImage(rs.getString(5));
				movie.setOpenDate(rs.getTimestamp(6));
				movieList.add(movie);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return movieList;
	}
}




















