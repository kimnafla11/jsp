<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 정보</title>
</head>
<body>
영화 정보 입력:<br><br>
<form action = "from.jsp" method = "post">
타이틀: <input type = "text" name = "movieName" value ="킬빌"><br>
가격: <input type = "text" name = "price" value ="5000"><br>
감독: <select name = "maker">
	<option value ="쿠엔틴타란티노">쿠엔틴타란티노</option>
	<option value ="박찬욱">박찬욱</option>
	<option value ="김기덕">김기덕</option>
	<option value ="피터잭슨">피터잭슨</option>
	<option value ="크리스토퍼놀란">크리스토퍼놀란</option>
	</select><br>
포스터: <input type = "text" name = "imageName" value = "killbill"><br>
	<input type = "submit" value ="입력">
</form>
</body>
</html>