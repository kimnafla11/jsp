<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int petId = Integer.parseInt(request.getParameter("petId"));//purchase에서 petid를 받고
	int num = Integer.parseInt(request.getParameter("petCount"));//purchase에서 petCount를 받음
	String purchaser = (String)session.getAttribute("LOGIN");//세션 속성에 들어있는 구매자를 가져온다.
	
	Connection conn = ConnectionProvider.getConnection();
	Pet pet = null;//펫 밖에서 선언하고
	try{
		//try catch문에서 dao를 두개 실행하면 petDao에서 close connection이 있기 때문에
		//petDao에서 JdbcUtil.close(conn);이거 주석처리
		PetDao dao = new PetDao();
		pet = dao.selectById(conn, petId);//모든 정보가 pet객체에 들어있음
		double totalPrice = num*pet.getPrice();
		
		
		Purchase pur = new Purchase(petId,pet.getPetName(),num,totalPrice,new java.util.Date(),purchaser);
		//pet객체에서 파라미터 가져옴
		PurchaseDao pDao = new PurchaseDao();
		pDao.insert(conn, pur);
		
	}catch(SQLException e){}
%>
구매가 완료되었습니다.
</body>
</html>