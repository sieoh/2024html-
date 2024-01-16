<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="utils.DBConfig" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 접속관련 정보 저장
		Connection connection = null;
		// 2 접속
		// Oracle 데이터베이스 연결 정보 설정
		//final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	    //final String USER = "jsp";
	    //final String PASSWORD = "123456";
	    
	    // 접속하기
	    try {
	    	connection = DBConfig.getConnection();
	    	out.println("jsp계정 접속성공");
	    } catch (Exception e) {
	    	out.println("jsp계정 접속실패");
	    }
	%>
</body>
</html>