<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %><%--임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CookieBox box = new CookieBox(request);//파라미터를 request로 줬음.얘가 부르는 건 몰까?? CookieBox.java에 있는 생성자를 부름
			//box에는 map스타일로 쿠키값이 주루룩 들어있음
	Cookie c1=null, c2=null;//멤버변수로 선언해주어야한다.
	if(box != null){//박스값 비어있으면 안되니까.
		if (box.exists("NM")){//nm이라는 쿠키 값이 있으면
			out.println("NM 쿠키 값 = "+ box.getValue("NM")+"<br>");//box내에 NM이라는 쿠키의 밸류 값을 출력하라
		}
		if(box.exists("UI")){
				out.println("UI 쿠키 값 = "+ box.getValue("UI")+"<br>");
		}
		c1 = box.getCookie("NM");
		c2 = box.getCookie("UI");
	}
%>
c1, c2의 이름과 값출력<br>
<%= c1.getName()%> : <%=box.getValue(c1.getName()) %><br>
<%= c2.getName()%> : <%=c2.getValue() %>
</body>
</html>