<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %><%--5개 임포트해주세요 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	Connection conn = ConnectionProvider.getConnection();
	boolean result= true;//boolean 타입의 result선언하고
	try{
		MemberDao dao = new MemberDao();
		result = dao.checkPassword(conn, memberId, password);//dao값을 result에 넣음
	}catch(SQLException e){}
	if (result){
		session.setAttribute("LOGIN", memberId);//result 값이 true면 sessionㅇㅇ
%>
	<jsp:forward page="/movie/select.jsp"/><%--조건 맞으면 forward를 타고 select.jsp로 감 --%>
<%
	}else {
%>
	<script>
	alert("아이디와 비번확인 요망");
	history.go(-1);
	</script>
<%
	}
%>
</body>
</html>