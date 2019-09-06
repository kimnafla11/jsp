<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int studentId = Integer.parseInt(request.getParameter("studentId"));//purchase에서 petid를 받고
	String subject = request.getParameter("subject");//purchase에서 petCount를 받음
	String teamPerson = (String)session.getAttribute("LOGIN");//세션 속성에 들어있는 구매자를 가져온다.
	
	Connection conn = ConnectionProvider.getConnection();
	Student student = null;
	try{
		//try catch문에서 dao를 두개 실행하면 petDao에서 close connection이 있기 때문에
		//petDao에서 JdbcUtil.close(conn);이거 주석처리
		StudentDao dao = new StudentDao();
		student = dao.selectById(conn, studentId);//모든 정보가 pet객체에 들어있음
	
		
		Team1 team1 = new Team1(studentId,student.getStuName(),subject,new java.util.Date(),teamPerson);
		//pet객체에서 파라미터 가져옴
		Team1Dao tDao = new Team1Dao();
		tDao.insert(conn, team1);
		
	}catch(SQLException e){}
%>
같은팀이 되었습니다<br>
<a href ="/0609/student/list.jsp">리스트보기</a>
</body>
</html>