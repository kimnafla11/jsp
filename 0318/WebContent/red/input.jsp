<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%--URLEncoder를 임포트 해줌 output에서 꺠지지않게--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String urlName= null;
	String urlAdd= null;
	String userId = request.getParameter("ui");//사용자라 get방식 ui를 받음
	String password = request.getParameter("pw");
	String name = request.getParameter("name");
	String address = request.getParameter("add");//address를 urladdress로 변경하는 과정이 필요하다. 
	if (name != null && address != null){
		urlName = URLEncoder.encode(name,"utf-8");//url로 쓸수있는 utf-8설정해주어야한다...그래야 아웃풋에서 안꺠지고 한글 넘어감
		urlAdd = URLEncoder.encode(address,"utf-8");
	//name값과 address값이 null값이라 인코딩이 안되서 에러가 난다.
	}
	if(userId != null)
		response.sendRedirect("output.jsp?ui="+userId
		+"&pw="+password+"&name="+urlName+"&add="+urlAdd);//이거 구조 기억하기"&파라미터="등호 빼먹지 말기!
	else{
	%>
	아이디가 입력되지않았습니다.
	
	<%} %>
</body>
</html>
