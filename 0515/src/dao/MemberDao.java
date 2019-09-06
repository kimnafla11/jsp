package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Member;
import util.JdbcUtil;

public class MemberDao {
	
	public int insert(Connection conn, Member member) //★★★★void 였던 insert의 형을 int로 바꾸어준다
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;//count변수 선언
		try {
			pstmt = conn.prepareStatement
			("insert into member values(?,?,?)");
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getUserName());
			count = pstmt.executeUpdate(); //결과값을 count에 넣음
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//count 리턴한다
	}
	public boolean checkPassword(Connection conn, String memberId, String password) //사용자가 jsp web에 입력하는것임, 맞으면 true를 리턴함
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null;
		try {
			pstmt = conn.prepareStatement
			("select * from member where memberId = ?");//사용자가 입력한 멤버 아이디 검색
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();//결과값을 rs에 가져옴
			if (rs.next()){
				member = new Member();
				member.setMemberId(rs.getString(1)); //member에 db에서 가져온 값으로 채움
				member.setPassword(rs.getString(2));
				member.setUserName(rs.getString(3));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return member.getPassword().equals(password);//db에서 가져온 password와 사용자가 입력한 password가 일치하면 true를 리턴함, 일치하지않으면 false를 리턴
	}
/*
	public List<Member> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {//유사검색하는 애임
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		List<Member> members = new ArrayList<Member>();
		try {
			pstmt = conn.prepareStatement
			("select * from member where " +target +" like ?");//유사검색 데이터베이스, ex문장중에 무슨 단어가 들어가는 데이터 찾기
			pstmt.setString(1, "%"+keyword+"%");//키워드 앞뒤에 %들어가는거 중요하다
			rs = pstmt.executeQuery();
			while (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getInt(1));
				member.setMemberName(rs.getString(2));
				member.setMaker(rs.getString(3));
				member.setPrice(rs.getInt(4));
				member.setMemberImage(rs.getString(5));
				member.setOpenDate(rs.getTimestamp(6));
				members.add(member);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return members;
	}
	
	public int update(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("update member set membername=?,maker=?,price=?,memberimage=?,opendate=? "
					+ "   where memberId=?");
			pstmt.setString(1, member.getMemberName());
			pstmt.setString(2, member.getMaker());
			pstmt.setInt(3, member.getPrice());
			pstmt.setString(4, member.getMemberImage());
			pstmt.setTimestamp(5, new Timestamp(member.getOpenDate().getTime()));
			pstmt.setInt(6, member.getMemberId());
			//memberId가 제일 마지막인 이유는 sql문에서 where절의 memberId가 가장 마지막에 있기 때문이다
			count = pstmt.executeUpdate(); //update가 된 갯수가 count에 들어감
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;//void였던 update값을 int로 고쳐주고 count 변수 선언하고 count로 리턴하게 한다
	}
	
	public int deleteById(Connection conn, int memberId) 
			throws SQLException {
		int count=0;
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from member where memberId = ?");
			pstmt.setInt(1, memberId);
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
			rs = stmt.executeQuery("select count(*) from member");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	*/
	
	public List<Member> selectList(Connection conn) //사용자 리스트를 보기 위한거
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> memberList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from member ");		//where절 없어도됨	
			rs  = pstmt.executeQuery(); 
			memberList = new ArrayList<Member>();
			while (rs.next()){
				Member member = new Member();
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setUserName(rs.getString(3));
				
				memberList.add(member);//member객체를 배열에 add하는 메소드임
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return memberList;
	}
}

/*MovieDao를 복붙해서 만들었다 그리고 Member 글짜 대체함
 * dao수정후, jsp파일 만든당.*/


















