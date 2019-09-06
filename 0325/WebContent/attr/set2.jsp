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
	session.setAttribute("UI", "nekim");//세션기본객체에 속성을 설정함
	session.setAttribute("사용자명","김나은");
	session.setAttribute("패스워드","1234");
%>
<%--<jsp:forward page="get1.jsp"/>세션객체는 set2get2는 공유하고 있기 떄문에 포워드문 필요 없다. --%>
속성 설정이 완료되었습니다.!!
</body>
</html>