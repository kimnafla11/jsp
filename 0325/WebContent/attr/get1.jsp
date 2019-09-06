<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
user ID = <%=request.getAttribute("UI") %><br>
사용자명 = <%=request.getAttribute("사용자명") %><br>
패스워드 = <%=request.getAttribute("패스워드") %><br>
<hr><br>
<%//한번에 값을 가져오게하기 배열사용
	Enumeration<String> attrs = request.getAttributeNames();
//속성이름을 배열로 가져와서 attrs라는 배열타입으로 저장하고
	while(attrs.hasMoreElements()){
		//while문으로 반복한다. 
		String attr = attrs.nextElement();
		//attr에 attrs에 있는것들을 가져오기
		out.print(attr+" = "+request.getAttribute(attr)+"<br>");
		//출력
	}
%>

</body>
</html>