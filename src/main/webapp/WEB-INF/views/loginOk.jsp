<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>Profile Home</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<c:if test="${loginCheck == 0 }">
		<script type="text/javascript">
			alert("아이디 또는 비밀번호가 존재하지 않습니다.")
			history.go(-1)
		</script>
	</c:if>
	
	<form action="joinOk" method="post" name="joinForm">
	<table class="maintable" border="0" cellpadding="20" cellspacing="0">
	<tr>
		<td align="center">
			<span class="title01">로그인 성공</span>
		</td>
	</tr>
	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="ok_text">
					${memberDto.mname }님 로그인 하셨습니다.<br>
					${memberDto.mid }의 가입일은 ${memberDto.mdate }입니다.
					반갑습니다.
				 </td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" class="con_btn" value="회원정보 페이지로" onclick="javascript:window.location.href='memberInfo'">
				</td>
			</tr>
		</table>
	</td>
	</tr>	
	</table>
	</form>
	<%@ include file="include/footer.jsp" %>
</body>
</html>