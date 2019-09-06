<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %><%--db를 가져오기 위한 sql클래스 모두 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="book" class="my.info.Book"/>
<jsp:setProperty property="*" name="book"/>
	
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	PreparedStatement pstmt=null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
		pstmt = conn.prepareStatement("insert into book (name,author,price) values (?,?,?)");
		//물음표에 해당하는 것을 채워나간다.
		pstmt.setString(1,book.getName());
		pstmt.setString(2,book.getAuthor());
		pstmt.setInt(3,book.getPrice());
		int count = pstmt.executeUpdate();
		out.println(count+"개의 레코드가 입력되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
%>

</body>
</html>