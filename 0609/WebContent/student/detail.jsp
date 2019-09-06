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
	int studentId = Integer.parseInt(request.getParameter("studentId"));
	Connection conn = ConnectionProvider.getConnection();
	Student student = null;//학생 밖에서 선언하고
	try{
		StudentDao dao = new StudentDao();
		student = dao.selectById(conn, studentId);//selectbyId를 pet에 넣어준다.
	}catch(SQLException e){}
%>

<c:set var = "student" value = "<%=student %>"/><!-- pet이라는 자바객체를 pet에 넣음으로써 el로 사용할 수 있다. -->
<img alt = "student" src = "/0609/images/${student.stuImg}" width = "250" height = "300"><br><br>
이름 : ${student.stuName }<br>
<input type = "button" value = "같은 팀 하기" onclick="location.href='with.jsp?studentId=${student.studentId}'">

</body>
</html>