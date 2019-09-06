<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.Date" %><%--db를 가져오기 위한 sql클래스 모두 임포트 , 날짜를 가지고오는데 date객체 임포트--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="product" class="my.info.Product"/>
<jsp:setProperty property="*" name="product"/>
	
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	PreparedStatement pstmt=null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
		pstmt = conn.prepareStatement("insert into product (name,maker,price,pdate) values (?,?,?,?)");
		//pdate추가해주고 물음표도 하나 더 넣기
		pstmt.setString(1,product.getName());
		pstmt.setString(2,product.getMaker());
		pstmt.setInt(3,product.getPrice());
		Date now = new Date();//지금 현재 시점을 구함
		pstmt.setTimestamp(4, new Timestamp(now.getTime()));//TimeStamp객체를 입력값으로 만듦
		int count = pstmt.executeUpdate();
		out.println(count+"개의 레코드가 입력되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
%>

</body>
</html>