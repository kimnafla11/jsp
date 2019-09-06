<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*, util.*, model.*,java.sql.*" %><!-- 페이지 임포트 해주기 -->
<%@ page import="java.util.*,java.io.*,com.oreilly.servlet.*,com.oreilly.servlet.multipart.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
        //이미지를 저장할 경로 입력.
        String path = "C:\\Users\\user\\eclipse-workspace\\0609\\WebContent\\images";
        String name = new String();
        String fileName = new String();
        int sizeLimit = 5 * 1024 * 1024; // 5메가까지 제한 넘어서면 예외발생
        MultipartRequest multi = null;
        try {
             multi = new MultipartRequest(request, path, sizeLimit, "utf-8",
                    new DefaultFileRenamePolicy());//MultipartRequest는 리퀘스트 기본객체와 비슷한데 파일을 처리하는 기본객체인거임
            Enumeration files = multi.getFileNames();
 
            //파일 정보가 있다면
            if (files.hasMoreElements()) {
                name = (String) files.nextElement();
                fileName = multi.getFilesystemName(name);//name을 주고 fileName을 얻을 수 있다.
            }
            System.out.println("이미지를 저장하였습니다. : " + fileName);
        } catch (IOException e) {}
        
        String stuName = multi.getParameter("stuName");
        String stuDepart = multi.getParameter("stuDepart");
        int stuAge = Integer.parseInt(multi.getParameter("stuAge"));
        Student student = new Student(stuName,stuDepart,stuAge,fileName,new java.util.Date());
        Connection conn = ConnectionProvider.getConnection();//insert하기 위해서 커넥션 만듦
        try{//트라이캐치문
        	StudentDao dao = new StudentDao();//Dao만듦
        	dao.insert(conn, student);//dao.insert해주기
        }catch(SQLException e){}
    %>
펫정보를 입력하였습니다. <a href = "list.jsp">리스트보기</a>
</body>
</html>