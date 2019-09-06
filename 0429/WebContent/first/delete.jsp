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
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;	//JSP와 DB연결
	Statement stmt=null;	//SQL문장을 실행
	//ResultSet rs=null; 
	try{//SQL문을 쓰려면 try catch구문 써주어야한다
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
			//커넥션 만듦.
		stmt = conn.createStatement();
		int count = stmt.executeUpdate("delete from member where memberid='b01'");
			//member테이블내에 memberid가 b01인 레코드를 삭제함.
		out.println(count+"개의 레코드가 삭제되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
	}
%>

</body>
</html>