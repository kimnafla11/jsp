<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보</title>
</head>
<body>
학생정보를 입력하세요. <br><hr><br>
<h3>${sessionScope.LOGIN }님 안녕하세요.</h3><br>
<form action="/0609/student/fileUpload.jsp" method ="post" enctype="multipart/form-data">
이름: <input type = "text" name = "stuName" value ="김나은"><br>
학과: <input type = "text" name = "stuDepart" value ="it경영"><br>
나이: <input type = "text" name = "stuAge" value ="25"><br>
사진: <input type = "file" name = "stuImg"><br>
<input type = "submit" value = "입력">
</form>
<br><hr><br>
<%// db에서 가져오기 위해 쓰는 공식

request.setCharacterEncoding("utf-8");
String target = request.getParameter("target");
String keyword = request.getParameter("keyword");
Connection conn = ConnectionProvider.getConnection();
List<Student> students = null;//List배열

try{
	StudentDao dao = new StudentDao();
	if(target == null)//target이 없으면 리스트를 보여주는거(초기실행하는 경우거나 아무것도 입력하지 않은 경우거나)
	students = dao.selectList(conn);
	else//target이 존재한다면 유사검색 실행됨
		students = dao.selectLike(conn, target, keyword);
}catch(SQLException e){}

%><!-- 스크립트릿에 선언한 pets를 가져와서 el형태로 표현하는거임 -->
<c:set var ="students" value = "<%=students %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${students==null }">학생 항목이 없습니다</c:if>
<c:if test="${students != null }">

<table width="700" border="1">
<tr>
	<th>아이디</th><th>이름</th><th>학과</th><th>나이</th><th>사진</th><th>등록일자</th><th>수정</th><th>삭제</th>
</tr>
<c:forEach var ="student" items ="${students }"><!-- 배열이므로 forEach문 사용 -->
<tr>
	<td>${student.studentId}</td>
	<td>${student.stuName}</td><td>${student.stuDepart}</td><td>${student.stuAge}</td>
	<td><a href = "/0609/student/detail.jsp?studentId=${student.studentId }">
		<img src ="/0609/images/${student.stuImg}" width="40" height="50"></a></td>
	<td><fmt:formatDate value="${student.stuDate }" type ="date" dateStyle="full"/></td>
	
	
	<td><input type = "button" value ="수정" onclick="location.href='updateInput.jsp?studentId=${student.studentId}'"></td>
	<td><a href="/0609/student/delete.jsp?studentId=${student.studentId}">삭제</a></td>


</tr>
</c:forEach>
</table>
</c:if>

<br><hr><br>
<form method = "post"><!-- form문에서 action지정을 하지 않으면 자기 자신을 호출함 -->
검색대상: <input type ="text" name = "target">
키워드: <input type ="text" name = "keyword">
<input type = "submit" value = "입력"><!-- 재귀적 post방법으로 보냈기 때문에 위에 있는 스크립트릿으로 바로 조건 에 들어간디 -->
</form>


</body>
</html>