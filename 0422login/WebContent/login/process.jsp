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
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String userName = request.getParameter("userName");
	if(userId.equals(password)){//id와 pw가 같으면 로그인 되게함
		session.setAttribute("AUTH", userId);//세션기본객체에 AUTH라는 속성명을 만듦, 그 값을 userName 넣음
		session.setAttribute("UN", userName);//계속 속성설정 하면 코드가 굉장히 더티해짐.
		out.println("로그인하였습니다.");
	}else{%>
		<script>
			alert("아이디와 패스워드가 달라요.");
			history.go(-1);
		</script><%--if문에 일치하지 않으면 경고창을 띄움--%>
<%
	}
%>
</body>
</html>