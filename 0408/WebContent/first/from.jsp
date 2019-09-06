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
	Movie movie = new Movie();//클래스 내임 movie객체 만듦 = new Movie();생성자 만들어줌..import해줘야한다
	movie.setMovieName("킬빌");//movie객체에 set을 써서 킬빌, 8000값 넣어주고
	movie.setPrice(8000);
	movie.setMaker("쿠엔틴타란티노");
	request.setAttribute("MV", movie);//속성 MV에 파라미터 명을 movie 13행에 넣어준 값을 속성에 정의함
%>
<jsp:forward page = "to.jsp"/>
<%--to.jsp에 포워딩해줌 --%>

</body>
</html>