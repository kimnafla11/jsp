<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String add = request.getParameter("add");
%>
여기는 sub.jsp를 부르기 전 입니다.<br>
name = <%=name %><br><%--get방식으로 가져온애를 name변수에 저장 --%>
주소 = <%=add %><br>
<jsp:include page="sub.jsp" flush = "false">
	<jsp:param value = "<%=name %>" name ="name"/>
	<jsp:param value = "<%=add %>" name = "add"/>
</jsp:include>
	<%--sub.jsp를 인클루드 하는데 name이라는 파라미터 값을 넘겨줌 --%>
	<%--value에 출력문을 써서 get방식으로 파라미터 값을 넘겨준다  --%>
<%--여기서 인클루드 일어남 이전에 일어난 결과를 플러시하지않음--%>
여기는 sub.jsp를 부르고 난 후 입니다.<br>
name = <%=request.getParameter("name") %><br>
add = <%=add %>
</body>
</html>