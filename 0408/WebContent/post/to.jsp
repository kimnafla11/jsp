<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.movie.Movie"%><%--얘도 마찬가지로 임포트 필요함 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Movie m1 = (Movie)request.getAttribute("MV");//MV속성값을 가져와서 뮤비 타입의 객체인 m에다가 저장함
//(Movie)를 넣어서 타입을 캐스팅 해준다 request.getAttribute는 object값을 반환하기때문에.. ->캐스팅 해준다
%>
영화제목: <%=m1.getMovieName() %><br>
가격: <%=m1.getPrice() %><br>
감독: <%=m1.getMaker() %><br>
포스터:<br><br>
<img alt ="poster" src = "/0408/images/<%=m1.getImageName() %>.jpg"><br>
</body>
</html>