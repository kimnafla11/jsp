<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.util.*" %><%--커넥션을 연결하기위한 my.util임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	Connection conn=ConnectionProvider.getConnection();//커넥션 툴 연결
	Statement stmt=null;	//SQL문장을 실행
	ResultSet rs=null;	//DB로부터 넘어온 값 저장
	try{//SQL문을 쓰려면 try catch구문 써주어야한다 실제로 일하는 부분
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from book order by bookid asc");
			//가져온 결과를 rs배열에 저장하라
		while(rs.next()){//rs를 출력하는 while문 배열이니까
			out.println(rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+"<br>");
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
		rs.close();//초기화가 안되는 에러가 뜨기 때문에 변수 선언한 곳에 null로 잡아준다.
	}
%>

</body>
</html>