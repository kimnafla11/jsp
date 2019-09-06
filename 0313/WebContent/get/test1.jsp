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
	String userId = request.getParameter("ui");
	String password = request.getParameter("pass");
	String name = request.getParameter("name");
%>
사용자 아이디 : <%=userId %><br>
패스워드 : <%=password %><br>
이름 : <%=name %><br>
<%--위에까진 겟방식으로 받아온거 --%>

<form action="test2.jsp">
	아이디: <input type="text" name ="id" value="<%=userId%>"><br><%--11행에 userId라는 애를 test2.jsp에 넘기겠다는 post방식 --%>
	이름: <input type="text" name ="name" value="<%=name%>">
	<input type="submit" value="전송">
	

</form>
</body>
</html>

<%--get방식은 인풋이 없어서 input을 url에 쳐 쥰ㄴ 거삼 --%>