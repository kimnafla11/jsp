<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화정보</title>
</head>
<body>
<form action = "from.jsp" method = "post">
타이틀: <input type = "text" name = "movieName" value = "킬빌"><br>
시리즈: <select name ="series">
		<option value = "1">1편</option>
		<option value = "2">2편</option>
		<option value = "1">3편</option>
	</select><br>
감독: <input type = "text" name = "maker" value = "쿠엔틴타란티노"><br>
포스터: <input type = "text" name = "imageName" value = "killbill"><br>
<input type = "submit" value = "입력">
</form>
</body>
</html>