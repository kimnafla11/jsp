<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	char[] buff = new char[128];//byte타입으로 128바이트 배열을 생성함
	int len = -1;
	String filePath = "/res/greeting.txt";
	InputStreamReader fr = null;
	try {
		fr = new InputStreamReader(
				application.getResourceAsStream(filePath),"utf-8");	
		while((len = fr.read(buff))!=-1){
			//fr이라는 객체로부터 읽어서 버퍼에 저장한다.저장을 한 그 길이가 -1이 아니면 뭔가 읽어들였다는거임
			out.print(new String(buff,0,len));
			//그 버퍼에 있는 내용을 읽어서 string으로 만들어서 out객체에 써라 ...존나 어렵네 씌앙..
		}
	}catch(IOException e){
		out.print("에러발생");
		}finally {
			fr.close();//17행에서 열린 stream을 닫아주어야한다.
		}
%>
</body>
</html>