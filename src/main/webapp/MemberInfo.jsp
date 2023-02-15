<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<style>
header {
	text-align: center;
	height: 50px;
}

nav ul {
	display: flex;
	justify-content: space-around;
}

section {
	height: 600px;
	margin-top: 100px;
	text-align: center;
}

section table {
	text-align: center;
	border : 1px solid gray;
	/* margin-left : auto;
	margin-right : auto; */
}

section h1 {
	text-align: center;
}

section th, td {
	border: 1px solid;
}
</style>



	<header>
		<h1>쇼핑몰 회원관리 VER 1.O</h1>
	</header>


	<nav>
		<ul>
			<li><a href="MemberJoin.jsp">회원등록</a></li>
			<li><a href="MemberInfo.jsp">회원목록조회/수정</a></li>
			<li><a href="">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>

	</nav>
	
	
	<%@page import="Dto.MemberDto, Dao.MemberDao, java.util.*" %>
	<%
		MemberDao dao = new MemberDao();
		List<MemberDto> list = dao.SelectAll();
		
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	%>
	
	
	<section>
		<h2>회원목록조회/수정</h2>
		
		
		<table align=center>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
			
			<%
				for(int i = 0; i < list.size(); i++) {
			%>
				<tr>
					<td><a href="MemberUpdate.jsp?custno=<%=list.get(i).getCustno() %>"><%=list.get(i).getCustno() %></a></td>
					<td><%=list.get(i).getCustname() %></td>
					<td><%=list.get(i).getPhone() %></td>
					<td><%=list.get(i).getAddress() %></td>
					
					<!-- 날짜  -->
					<%
						//문자열 -> Date 변환
						Date tmp = fmt.parse(list.get(i).getJoindate());
						//list.get(0) ==> 100001번 고객 DTO
						//list.get(0).getJoindate() ==> 23/02/14
						//fmt.parse(list.get(0).getJoindate()) ==> Wed Dec 02 00:00:00 KST 2015	
						
						
					%>
					<td><%=fmt.format(tmp) %></td>
					
					
					<!-- 고객등급 -->
					<%
						if(list.get(i).getGrade().equals("A")) {
							out.println("<td>VIP</td>");
						} else if (list.get(i).getGrade().equals("B")) {
							out.println("<td>일반</td>");
						} else if (list.get(i).getGrade().equals("C")) {
							out.println("<td>직원</td>");
						}
					%>
					
					<td><%=list.get(i).getCity() %></td>
				
				</tr>
			
				
			<%
				}
			%>

		</table>
		
	</section>

	<footer> HRDKOREA Copyright@2016 ALL - </footer>


</body>
</html>