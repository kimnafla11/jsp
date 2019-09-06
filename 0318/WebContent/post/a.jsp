<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
개 찐따같은 윤두준 졸업사진<br>

<img alt="찐따두준" src="/0318/post/images/zzin.jpg">

<br> <%=request.getParameter("size") %> 윤두준

<%--size파라미터 가져옴
process.jsp에서 urlencoding과정을 거쳐서 출력함 --%>
</body>
</html>