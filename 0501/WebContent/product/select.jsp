<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.info.Product" %><%--db를 가져오기 위한 sql클래스 모두 임포트, 프로덕트 클래스 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;//JSP와 DB연결
	Statement stmt=null;	//SQL문장을 실행
	ResultSet rs=null;	//DB로부터 넘어온 값 저장
	try{//SQL문을 쓰려면 try catch구문 써주어야한다 실제로 일하는 부분
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
			//커넥션 만듦. 만드는 메소드 DriverManager.getConnection. "root", 비밀번호는 주지 않음
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from product");
		Product product = new Product();
		while(rs.next()){
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));	
			product.setpDate(rs.getTimestamp(5));
%>
	
제품아이디: <%=product.getProductId() %><br>
제품명: <%=product.getName() %><br>
가격: <%=product.getPrice() %><br>
생산일자: <%=product.getpDate() %><br><hr><br>

<%
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
		rs.close();//초기화가 안되는 에러가 뜨기 때문에 변수 선언한 곳에 null로 잡아준다.
	}
%>

</body>
</html>