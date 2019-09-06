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
	int count = 10;
	int even = 0;
	int odd = 0;
	for(int i=0; i<=count;i++){
		if (i %2 ==0)//짝수만 하는 조건식
			even+=i; //even= even+i

		else//if조건식 빼고 나머지 수 ㅇㅇㅇ
			odd+=i;
	}
%>

1부터 <%= count %>까지의 짝수의 합은 <%=even %> 입니다.<br>
1부터 <%= count %>까지의 홀의 합은 <%=odd %> 입니다.

</body>
</html>