<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userId");
	String password = request.getParameter("password");
	if(id.equals(password)){//id와 비밀번호가 같으면 로그인 되게 하자.
		response.addCookie(CookieBox.createCookie("AUTH", id, "/", -1));//AUTH라는 쿠키를 만듦 밸류값은 id
		out.println("로그인 성공");
	}else{
%>
	<script>
		alert("아이디와 비밀번호를 확인하세요ㅡㅡ");
		history.go(-1);
	</script><%--버튼을 누르면 이전에 다시 입력했던 곳으로 가게 함 --%>
<%		
	}
%>

<br>
<a href = "checkLogin.jsp">로그인 됐는지 안됐는지 눌러보세요</a>
<a href = "logout.jsp">로그아웃하기</a>

</body>
</html>