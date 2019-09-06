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
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="member" class = "my.info.Member"/>
<jsp:setProperty property="*" name="member"/>
<%--String4줄에 해당하던 것들이 위 두줄로 줄어듦 --%>
<%
	if(member.getUserId().equals(member.getPassword())){//getter메소드를 사용해서 아이디와 패스워드를 가져옴
		session.setAttribute("AUTH", member);//setProperty에 설정한 member라는 객체를 attribute설정함
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