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
	request.setAttribute("ADDR", "서울");
	//request는 request에 연결 된 곳에서만 쓸수 ㅇㅆ다. 실행하면 서울은 나온다 포워드했으니까
	pageContext.setAttribute("ADDR", "포항");
	//pageContext는 set3.jsp에서만 쓸수 있다 페이지 내에서만 되기떄문에  null값 나옴
	session.setAttribute("ADDR", "인천");
	//쎼션은 웹브라우져를 켜놓은 이상 공유한다 잘나옴
	application.setAttribute("ADDR", "부산");
	//어떨때라도 항상 사용할 수 있다 잘나옴 웹서버가 돌아가고있으면 값을 늘 가지고 있기때문에
	//네개의 기본 영역에 속성을 설정했다..
%>
속성 설정 완료됐노!!~
<jsp:forward page ="get3.jsp"/><%--포워드해서 실행하면 get3으로 바로 감 --%>
</body>
</html>