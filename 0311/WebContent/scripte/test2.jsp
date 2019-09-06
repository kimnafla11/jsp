<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트 예제2</title>
</head>
<body>
<%! 
	int max = 100; //declaration, 선언부, 전역변수(멤버변수) 선언 꺽쇄퍼센트느낌표
	public int sum(int a, int b){
		return a + b;
	}	

	int A(int a, int b){
	return a-b;	
}

	int B(int a, int b){
	return a*b;	
}

	int C(int a, int b){
	return a/b;	//메서드 몇개 더 만들어서 실행가능합니당ㅋ
}
%>

5 + 7 = <%= sum (5,7) %><br> <%--앞에 자바코드에 a에 5대입, b=7 return a+b니까 12 --%>
5 - 7 = <%= A(5,7) %><br>
5 * 7 = <%= B(5,7) %><br>
5 / 7 = <%= C(5,7) %><br>
</body>
</html>