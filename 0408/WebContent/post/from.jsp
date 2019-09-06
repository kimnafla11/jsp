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
	//Movie movie = new Movie();
	String name = request.getParameter("moiveName");
	int price = Integer.parseInt(request.getParameter("price"));
	String maker = request.getParameter("maker");
	String imageName = request.getParameter("imageName");
	//movie.setMovieName(name);
	//movie.setPrice(price);
	//movie.setMaker(maker);
	//movie.setImageName(imageName);//to.jsp에 넘어가는 값은 네개지만 attribute값 하나에 다 저장해서 넘길수있다.
	Movie movie = new Movie(name,price,maker,imageName);
	request.setAttribute("MV", movie);
%>
<jsp:forward page = "to.jsp"/>
<%--to.jsp에 포워딩해줌 --%>

</body>
</html>