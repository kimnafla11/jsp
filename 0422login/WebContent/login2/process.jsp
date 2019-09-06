<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Member" %><%--페이지 임포트 필수! --%>
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
	Member member = new Member(userId,password, userName);//파라미터 생성자를 써서 member 객체를 만듦
	if(userId.equals(password)){//id와 pw가 같으면 로그인 되게함
		session.setAttribute("AUTH", member);//member라는 객체 전부를 auth 속성으로 넣어버렸다.
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