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
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String name = request.getParameter("name");
	int score = Integer.parseInt(request.getParameter("score"));
	//파라미터 가져와서 변수에 저장해주었다.
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;	//JSP와 DB연결
	Statement stmt=null;	//SQL문장을 실행
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
			//커넥션 만듦
		stmt = conn.createStatement();
		int count = stmt.executeUpdate("insert into member values ('"+memberId+"','"+name+"',"+score+")");
			//점수는 int형이므로 따옴표 없음
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