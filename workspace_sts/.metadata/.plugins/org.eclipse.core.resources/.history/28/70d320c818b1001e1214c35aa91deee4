<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="utils.DBConfig" %>
<%@ page import="vo.DepartVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* 부서 목록 */
   body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
   }
   .department-list {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   }
   table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
   }
   th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
   }
   th {
      background-color: #3498db;
      color: #fff;
   }
</style>
</head>
<body>
	<%
		// DB 접속
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet resiltSet = null;
		ArrayList<DepartVo> departlist = new ArrayList<>();
		
		// 접속
		try {
			connection = DBConfig.getConnection();
			System.out.println("jsp계정 접속성공");
		} catch(Exception e) {
			System.out.println("jsp계정 접속실패");
		}
		// 부서정보 목록을 가져오는 쿼리 실행
		try {
			String sql = "SELECT DEPART_ID,DEPART_NAME,LOCATION,PHONE_NUMBER FROM DEPARTMENTS ORDER BY DEPART_ID";
			pstmt = connection.prepareStatement(sql);
			resiltSet = pstmt.executeQuery();
			
			while(resiltSet.next()){
				DepartVo departvo = new DepartVo();
				departvo.setDepart_id(resiltSet.getString("depart_id"));
				departvo.setDepart_name(resiltSet.getString("depart_name"));
				departvo.setLocation(resiltSet.getString("location"));
				departvo.setPhone_number(resiltSet.getString("phone_number"));
				
				departlist.add(departvo);
			}
		} catch(SQLException se) {
			System.out.println("에러로그: 직원목록==>"+se.getMessage());
		}
		
	%>
	<div class="department-list">
		<h2>부서 목록</h2>
		<button onclick="handleAddButtonClick()">부서 등록</button>
		<table>
			<thead>
				<tr>
					<th>부서번호</th>
					<th>부서이름</th>
					<th>지역</th>
					<th>부서 전화번호</th>
					<th>동작</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(int i=0;i<departlist.size();i++){
						DepartVo temp = departlist.get(i);
				%>
				<tr>
					<td><%= temp.getDepart_id() %></td>
					<td><%= temp.getDepart_name() %></td>
					<td><%= temp.getLocation() %></td>
					<td><%= temp.getPhone_number() %></td>
					<td><button onclick="handleButtonClick(0)">수정 처리</button>
						<button onclick="handleButtonClick(0)">삭제 처리</button>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<script>
		function handleAddButtonClick() {
			location.href="departform.jsp";
		}
	</script>
</body>
</html>