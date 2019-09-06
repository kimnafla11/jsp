<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.movie.Movie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//한글 이름 넘어오니까 캐릭터 인코딩해주자
	String name = request.getParameter("moiveName");
	int price = Integer.parseInt(request.getParameter("price"));
	String maker = request.getParameter("maker");
	String imageName = request.getParameter("imageName");
	Movie movie = new Movie(name,price,maker,imageName);
	session.setAttribute("MV", movie);
%>
세션 기본객체 설정을 완료했습니다..

</body>
</html>