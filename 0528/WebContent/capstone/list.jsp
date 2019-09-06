<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*, model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	Connection conn= ConnectionProvider.getConnection();//커넥션 툴 연결
	List<Capstone> capstones = null; 
	try{
		CapstoneDao dao = new CapstoneDao();//dao객체 하나 만들어줌
		capstones = dao.selectList(conn);
		out.println("ID | 팀명 | 팀원 | 인원 | 날짜 <br><br>");
		for(Capstone capstone : capstones){
			out.println(capstone.getTeamId()+" | "+capstone.getTeamName()+" | "+capstone.getMember()+" | "+capstone.getNumPerson()+" | "+capstone.getmDate()+"<br>");
		}
		}
		catch(SQLException e){
		e.printStackTrace();
	}
%>
</body>
</html>