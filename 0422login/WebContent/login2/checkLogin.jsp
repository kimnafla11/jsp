<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Member" %><%--마찬가지로 임포트 해주어야함 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member member = (Member)session.getAttribute("AUTH");
	if(member!=null){//auth값이 null값이 아니면 뭔가 입력되어있다 즉, 로그인 되어있다.
		out.println(member.getUserName()+"님이 로그인 한 상태입니다.");
	}else{
		out.println("로그인 안되어있습니다.. 로그인 왜 안함???;;");
	}
%>
<a href = "login.jsp">로그인 화면으로  돌아가기</a>
</body>
</html>