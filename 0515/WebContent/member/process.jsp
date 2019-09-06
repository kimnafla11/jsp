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
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "member" class = "model.Member"/>
<jsp:setProperty property="*" name="member"/>

<%
	Connection conn = ConnectionProvider.getConnection();//이 메소드는 꼭 try catch와 함께함
	int count = 0;//insert 결과값을 count값으로 받는거임
	try{
		CapstoneDao dao = new CapstoneDao();
		count = dao.insert(conn, member);
	}catch(SQLException e){}
	if(count != 0){//insert된 것이 있으면
%>
	<jsp:forward page = "memberList.jsp"/>
<%
	}

%>
</body>
</html>