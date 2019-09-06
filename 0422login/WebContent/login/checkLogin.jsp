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
	String un = (String)session.getAttribute("UN");//process.jsp에서 UN이라는 속성값을 가져와서 
												//(String)으로 캐스팅 한 후 un에 넣음
	if(un!=null){//auth값이 null값이 아니면 뭔가 입력되어있다 즉, 로그인 되어있다.
		out.println(un+"님이 로그인 한 상태입니다.");
	}else{
		out.println("로그인 안되어있습니다.. 로그인 왜 안함???;;");
	}
%>
<a href = "login.jsp">로그인 화면으로  돌아가기</a>
</body>
</html>