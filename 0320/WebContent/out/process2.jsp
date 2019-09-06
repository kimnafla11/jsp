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
	String sub = request.getParameter("subject");
	int score = Integer.parseInt(request.getParameter("score"));
	if (score >= 90 && score <= 100)
		out.println("당신의 "+sub+" 과목 성적은 A입니다");
	else if(score >= 80 && score < 90)
		out.println("당신의 "+sub+" 과목 성적은 B입니다");
	else if(score>= 70 && score <80)
		out.println("당신의 "+sub+" 과목 성적은 C입니다");
	else
		out.println("당신의 "+sub+" 과목 성적은 D입니다");
%>
</body>
</html>