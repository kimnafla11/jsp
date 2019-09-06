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
	Student student = null;
	try{
		StudentDao dao = new StudentDao();
		student = dao.selectById(conn, studentId);//selectbyId를 pet에 넣어준다.
		
	}catch(SQLException e){}
%>

<c:set var = "student" value = "<%=student %>"/><!-- pet이라는 자바객체를 pet에 넣음으로써 el로 사용할 수 있다. -->
<img alt = "student" src = "/0609/images/${student.stuImg }" width = "100" height = "130"><br><br>
이름 : ${student.stuName }<br>
전공 : ${student.stuDepart}<br><br>
<h3>${sessionScope.LOGIN }님이 같은 팀 하려합니다.</h3><br>
<form action="withProcess.jsp" method = "post">
아이디 : <input type = "text" name = "studentId" value ="${student.studentId }"><br>
이름 : <input type = "text" name = "stuName" value ="${student.stuName }"><br>
무슨과목? : <input type = "text" name = "subject" value ="마케팅"><br>
<input type = "submit" value = "함께하기">
</form>
</body>
</html>