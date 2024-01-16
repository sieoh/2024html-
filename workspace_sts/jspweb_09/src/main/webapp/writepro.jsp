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
	<h2>계시판 정보 처리</h2>
	<%
		String name = request.getParameter("employeeName");
		String title = request.getParameter("postTitle");
		String content = request.getParameter("postContent");
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		
		try {
			connection = DBConfig.getConnection();
			System.out.println("접속 성공");
		} catch(SQLException se) {
			System.out.println("접속 실패");
		}
		// SQL
		try {
			String sql="INSERT INTO BO_FREE (name,subject,content) VALUES (?,?,?)";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			
			
		} catch (SQLException se) {
			System.out.println("<script>location.href='departform.jsp'</script>");
		}
	%>
</body>
</html>