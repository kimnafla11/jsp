<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("UI", "nekim");//속성을 설정함
	request.setAttribute("사용자명","김나은");
	request.setAttribute("패스워드","1234");
%>
<jsp:forward page="get1.jsp"/><%--리퀘스트기본객체를 가진채로 get1.jsp로 가라긔 --%>
속성 설정이 완료되었습니다.!!
</body>
</html>