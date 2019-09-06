<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게이를 팔아요</title>
</head>
<body>
hot gay들이 모여있는 곳입니다^^<br><hr><br><br>
<%
	request.setCharacterEncoding("utf-8");//캐릭터인코딩 해주자. 로그인jsp에서 보낸 한글 이름이 깨지니까.
	String id = request.getParameter("id");//login.jsp에서 보낸 파라미터 값을 id라는 변수에 저장함
	String name = request.getParameter("name");
%>
<table width = "700" border = "1"><%--테두리선을 1로 --%>
	<tr>
		<td colspan="2"><%--colspan2 로 해서 칼럼을 끝까지 오게 함.. --%>
			<jsp:include page="/module/header.jsp">
				<jsp:param value="<%=id %>" name="id"/>
			</jsp:include>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="/module/menu.jsp"/>
		</td>
		<td>
			<jsp:include page="main3.jsp"/>
		</td><%--2열짜리 단을 만듦 --%>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="/module/footer.jsp"/>
		</td>
	</tr><%--3단짜리 표tr를 만듦 --%>
</table>
</body>
</html>