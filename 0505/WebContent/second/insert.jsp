<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int singerID = Integer.parseInt(request.getParameter("singerID"));
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String company = request.getParameter("company");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;	//JSP와 DB연결
	Statement stmt=null;	//SQL문장을 실행
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
		stmt = conn.createStatement();
		int count = stmt.executeUpdate("insert into singer values ("+singerID+",'"+name+"',"+age+",'"+company+"')");
		out.println(count+"개의 레코드가 입력되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
	}
%>

</body>
</html>