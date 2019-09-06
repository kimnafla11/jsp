<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration<String> params = application.getInitParameterNames();//애플리케이션 기본객체에 저장되
	while(params.hasMoreElements()){
		String paramName = params.nextElement();
		String paramValue = application.getInitParameter(paramName);
		out.println(paramName+" = "+paramValue+"<br>");
	}
	int userNumber = Integer.parseInt
			(application.getInitParameter("userNumber"));
	out.println("<ul>");
	for(int i =1; i<=userNumber;i++){
%>
	<li>사용자<%= i %></li>
<%} %>
</ul>
</body>
</html>
<%--초기화 파라미터를 웹xml에 넣고
getinitparametername으로 가져올수있다 --%>
