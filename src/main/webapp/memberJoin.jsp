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
	/* margin-left : auto;
	margin-right : auto; */
}

section h1 {
	text-align: center;
}

section td {
	border: 1px solid;
}
</style>






	<header>
		<h1>쇼핑몰 회원관리 VER 1.O</h1>
	</header>


	<nav>
		<ul>
			<li><a href="">회원등록</a></li>
			<li><a href="">회원목록조회/수정</a></li>
			<li><a href="">회원매출조회</a></li>
			<li><a href="">홈으로</a></li>
		</ul>

	</nav>




	<section>
		<h2>홈쇼핑 회원 등록</h2>

		<form action="proc/joinproc.jsp" method="post" onsubmit="return false" name="joinfrm">
			<table align=center>
				<tr>
					<td>회원번호(자동발생)</td>
					<td><input type="text" name="custno" value="" /></td>
				</tr>

				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname" /></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone" /></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="text" name="joindate" value="" /></td>
				</tr>
				<tr>
					<td>고객등급[A:VIP, B:일반, C:직원]</td>
					<td><input type="text" name="grade" /></td>
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city" /></td>
				</tr>
				<tr>
					<td colspan=2>
						<button onclick="isValid()">등록</button>
						<button>조회</button>
					</td>
				</tr>

			</table>
		</form>

	</section>

	<footer> HRDKOREA Copyright@2016 ALL - </footer>



	<script>
		function isValid() {
			const frm = document.joinfrm;
			if(frm.custname.value.trim()=="") {
				alert("회원 성명이 입력되지 않았습니다!");
				frm.custname.focus();
				return false;
			}
			if(frm.phone.value.trim()=="") {
				alert("회원 전화번호가 입력되지 않았습니다!");
				frm.phone.focus();
				return false;
			}
			if(frm.address.value.trim()=="") {
				alert("회원 주소가 입력되지 않았습니다!");
				frm.address.focus();
				return false;
			}
			if(frm.grade.value.trim()=="") {
				alert("고객 등급이 입력되지 않았습니다!");
				frm.grade.focus();
				return false;
			}
			if(frm.city.value.trim()=="") {
				alert("도시 코드가 입력되지 않았습니다!");
				frm.city.focus();
				return false;
			}
			
			
			//문제 없을 경우
			frm.action="proc/joinproc.jsp";
			frm.submit();
		}
	
	
	
		
	</script>
	
	
	
	
	
	
	




</body>
</html>