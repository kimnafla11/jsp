<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %><%-- db를 가져오기 위한 sql클래스 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이돌 정보</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int ididol = Integer.parseInt(request.getParameter("ididol"));
	String name = request.getParameter("name");
	int member = Integer.parseInt(request.getParameter("member"));
	String company = request.getParameter("company");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web3","root","");
		pstmt = conn.prepareStatement("insert into idol (ididol,name,member,company) values (?,?,?,?)");
		pstmt.setInt(1, ididol);
		pstmt.setString(2, name);
		pstmt.setInt(3, member);
		pstmt.setString(4, company);
		
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