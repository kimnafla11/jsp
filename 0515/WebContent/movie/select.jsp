<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*, model.*, util.*, java.sql.*, java.util.*" %><!-- 5개 클래스 임포트!! -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 리스트</title>
</head>
<body>
영화리스트 : <br><hr><br>
<%
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	Connection conn = ConnectionProvider.getConnection();
	List<Movie> movies = null;//List배열
	
	try{
		MovieDao dao = new MovieDao();
		if(target == null)//target이 없으면 리스트를 보여주는거(초기실행하는 경우거나 아무것도 입력하지 않은 경우거나)
		movies = dao.selectList(conn);
		else//target이 존재한다면 유사검색 실행됨
			movies = dao.selectLike(conn, target, keyword);
	}catch(SQLException e){}
%>

<table border = "1" width = "700">
<tr><!-- table row -->
<th>아이디</th><th>영화명</th><th>제작사</th><th>가격</th><th>포스터</th><th>개봉일</th>
<th>수정</th><th>삭제</th><th>구매</th>
</tr>
<%
	if(movies != null){
		for(Movie movie : movies){//Movie에서 movie객체를 꺼내는데 movie배열을 돌린다
%>
<tr>
<td><%=movie.getMovieId() %></td><td><%=movie.getMovieName() %></td><td><%=movie.getMaker() %></td>
<td><%=movie.getPrice() %></td>
<td><img alt = "포스터" width = "50" height = "60" src = "/0515/images/<%=movie.getMovieImage() %>"></td>
<td><%=movie.getOpenDate() %></td>
<%--<td><a href = "updateInput.jsp?movieId=<%=movie.getMovieId()%>">수정</a></td><%--update는 무엇을 삭제할지 지정해주어야 하기때문에 input파일이 필요 --%>
<%--<td><a href = "delete.jsp?movieId=<%=movie.getMovieId()%>">삭제</a></td> --%>
<td><input type = "button" value = "수정" onClick = "location.href='/0515/movie/updateInput.jsp?movieId=<%=movie.getMovieId()%>'"></td>
<td><input type = "button" value = "삭제" onClick = "location.href='/0515/movie/delete.jsp?movieId=<%=movie.getMovieId()%>'"></td>
<td><input type = "button" value = "구매" onClick = "location.href='/0515/movie/purchaseInput.jsp?movieId=<%=movie.getMovieId()%>'"></td>
</tr>

<%		}
	}
%>
</table>
<br><hr><br>
<form method = "post"><!-- form문에서 action지정을 하지 않으면 자기 자신을 호출함 -->
검색대상: <input type ="text" name = "target" value = "maker">
키워드: <input type ="text" name = "keyword" value = "c">
<input type = "submit" value = "입력"><!-- 재귀적 post방법으로 보냈기 때문에 위에 있는 스크립트릿으로 바로 조건 에 들어간디 -->
</form>

</body>
</html>