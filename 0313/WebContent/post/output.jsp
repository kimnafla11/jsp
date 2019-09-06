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
<%
	request.setCharacterEncoding("utf-8");//리퀘스트 객체에서 한글 결과값이 깨지지 않도록 캐릭터 셋 설정해주어야한다
	String name = request.getParameter("name");
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String[] names = request.getParameterValues("nickName");
	String[] singers = request.getParameterValues("singer");//배열 이름을 singers로 하고 받아오는 파라미터는 singer
	String[] addresses = request.getParameterValues("address");
%>
사용자 이름 : <%=request.getParameter("name") %><br><%--request객체로 출력가능하다 --%>
사용자아이디 : <%=userId %><br>
패스워드 : <%=password %><br>
닉네임 :	
<%
	/*for(int i=0; i <names.length; i++)
		out.println(names[i]);*/
		//0부터 배열의 길이 까지 가는데 i를 1씩 더하면서 출력하세요 배열에 있는거 출력 가능
	for (String nickName: names)//네임즈라는 배열에서 하나를 꺼내서 name이라 하고 그걸 출력핼
		out.println(nickName);
%>
<br>
좋아하는 가수 : 
<%
	for (String singer: singers)
		out.println(singer);
%>
<br>
주소 : 
<%
	for (String address: addresses)
		out.println(address);
%>
<br>

<%
	int score = Integer.parseInt(request.getParameter("score"));
		//input.jsp파일에서 score가 text타입이기 때문에 Integer.parseInt를 사용하여 정수형으로 변환한후 수식 계산
	String grade;//학점 선언
	if(score<100 && score>=90) grade="A";
	else if(score<90 && score>=80) grade="B";
	else grade="C";
%>
성적 : <%=grade %><br>
파라미터 이름들: 
<%
	Enumeration<String> params = request.getParameterNames();//params는 걍 임의로 설정한 이름 
	while(params.hasMoreElements()){
		out.println(params.nextElement()+"<br>");
	}
%>

</body>
</html>