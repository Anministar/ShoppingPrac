<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>



<jsp:useBean id="dto" class="Dto.MemberDto" />
<jsp:setProperty property="*" name="dto" />


<%@page import="Dao.MemberDao" %>

<%
System.out.println("[MemberDto] : " + dto);
MemberDao dao = new MemberDao();
boolean isok = dao.Insert(dto);
if (isok) {
%>
<script>
	alert("회원 등록이 완료되었습니다!");
	location.href = "../index.jsp";
</script>

<%
} else {
%>

<script>
	alert("회원 등록을 실패하였습니다!");
	location.href = "../memberJoin.jsp";
</script>

<%
}
%>




</body>
</html>