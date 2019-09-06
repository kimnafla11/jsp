<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.util.*" %><%--커넥션 툴 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book" class = "my.model.Book"/>
<jsp:setProperty property="*" name="book"/>
<%
	Connection conn=ConnectionProvider.getConnection();	//커넥션 만들어주기
	PreparedStatement pstmt=null;	//SQL문장을 실행
	try{
		pstmt = conn.prepareStatement("update book set name=?,author=?,price=? where bookId=?");
			//업데이트는 ?에 수정된변수값이 들어가게된다. where절 앞에는 콤마 금지
		pstmt.setString(1, book.getName());
		pstmt.setString(2, book.getAuthor());
		pstmt.setInt(3, book.getPrice());
		pstmt.setInt(4, book.getBookId());
		int count = pstmt.executeUpdate();
		out.println(count+"개의 레코드가 수정되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
%>

</body>
</html>