<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키리스트 :<br><hr><br>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length>0){
		for(Cookie cookie: cookies){
			out.println(cookie.getName()+" = "
		+URLDecoder.decode(cookie.getValue(),"utf-8")+"<br>");
		}//한글 입력 디코딩 받기 위해서 3행에 임포트 해주고 url디코더로 디코딩 해줌
	}	
%>
</body>
</html>