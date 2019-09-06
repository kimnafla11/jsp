<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %><%--5개 임포트해주세요 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 리스트</title>
</head>
<body>
<h3>회원리스트</h3><br><hr><br>
<%
	Connection conn = ConnectionProvider.getConnection();//이 메소드는 꼭 try catch와 함께함
	List<Member> members = null;//배열이름을 members로 만들었다
	int count = 0;//insert 결과값을 count값으로 받는거임
	try{
		MemberDao dao = new MemberDao();
		members = dao.selectList(conn);
	}catch(SQLException e){}
	if (members != null){
		for (Member member : members){//출력하기 위한 for문
%>
	<%=member.getMemberId() %> : <%=member.getPassword() %> : <%= member.getUserName() %>
<%
		}
	}
%>
<br><br>
<a href = "loginInput.jsp">로그인하러가기</a>
</body>
</html>