<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CookieBox cb = new CookieBox(request);
	if(cb != null){
		if(cb.exists("AUTH")){//로그인 한 쿠키가 cb에 존재하면
			out.println(cb.getValue("AUTH")+"님, 현재 로그인이 되어있습니다.");//AUTH value값을 출력을 하면서 문구를 출력함
		}else{
			out.println("로그인하지 않은 상태입니다.");%>
			<a href = "login.jsp">다시 로그인하기</a>
<%		}
	}
%>
</body>
</html>