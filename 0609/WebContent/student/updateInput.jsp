<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %>
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
		student = dao.selectById(conn, studentId);
	}catch(SQLException e){}
%>
	
<c:set var ="student" value = "<%=student %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${student==null }">학생 항목이 없습니다</c:if>
<c:if test="${student != null }">

<form action = "update.jsp" method = "post">
<input type = "hidden" name = "studentId" value = "${student.studentId }"><br><%--hidden타입 신기, 앞서 movieId변수를 그대로 이용 --%>
이름:<input type = "text" name = "stuName" value = "${student.stuName }"><br>
학과:<input type = "text" name = "stuDepart" value = "${student.stuDepart }"><br>
나이:<input type = "text" name = "stuAge" value = "${student.stuAge }"><br>
사진:<input type = "text" name = "stuImg" value = "${student.stuImg }"><br>
<input type = "submit" value = "수정"><br>
</form>
</c:if>

</body>
</html>