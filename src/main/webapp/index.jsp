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
	text-align : center;
	height : 50px;
}

nav ul {
	display : flex;
	justify-content : space-around;
}

section {
	height : 600px;
	margin-top : 100px;

	
}

section h1 {
	text-align : center;
}
</style>

<header>
	<h1>쇼핑몰 회원관리 VER 1.O</h1>
</header>


<nav>
	<ul>
		<li><a href="MemberJoin.jsp">회원등록</a></li>
		<li><a href="MemberInfo.jsp">회원목록조회/수정</a></li>
		<li><a href="sales.jsp">회원매출조회</a></li>
		<li><a href="index.jsp">홈으로</a></li>
	</ul>

</nav>


<section>
	<h1>쇼핑몰 회원관리 프로그램</h1>
	<p>
	쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br>
	프로그램 작성 순서 <br>
	1. 회원정보 테이블을 생성한다.<br>
	2. 매출정보 테이블을 생성한다.<br>
	3. 회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.<br>
	4. 회원정보 입력 화면프로그램을 작성한다.<br>
	5. 회원정보 조회 프로그램을 작성한다.<br>
	6. 회원매출정보 조회 프로그램을 작성한다.<br>
	</p>
	
	
</section>


<footer>
	HRDKOREA Copyright@2016 ALL -
</footer>



</body>
</html>