<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.DBConfig" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사용자 인증 처리</h2>
	<%
		String empid = request.getParameter("employeeId");
		String userpw = request.getParameter("userPw");
		
		Connection connection = null;			// 디비 접속 성공시 접속 정보 저장
		PreparedStatement pstmt = null;			// 쿼리를 실행하기 객체 정보
		ResultSet resultSet = null;				// SELECT 결과를 저장하는 정보
		
		// DB 접속
		try {
			connection = DBConfig.getConnection();	// 주의: 접속 성공시 접속 정보 저장
			System.out.println("접속 성공");
		} catch(SQLException se) {
			System.out.println("접속 실패");
		}
		// 아이디 비밀번호 체크
		int result = 0;
		try {
			String sql = "SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = ?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(empid));
			resultSet = pstmt.executeQuery(); 	// executeQuery: SELECT 일 경우
			
			while(resultSet.next()){
				System.out.println("결과: "+resultSet);
			}
			//if(result==1){
			//	out.println("<script>location.href='main.jsp'</script>");
			//} else {
			//	out.println("<script>location.href='loginform2.jsp'</script>");
			//}
		} catch(SQLException se) {
			
		}
		
		
	%>
	
	<% //System.out.println("empid = "+ empid); %>
	<br>
	<% //System.out.println("userpw = "+ userpw); %>
</body>
</html>