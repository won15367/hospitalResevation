<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="joinOk" method="post" name="joinForm">
	<table class="maintable" border="0" cellpadding="20" cellspacing="0">
	<tr>
		<td align="center">
			<span class="title01">회원가입</span>
		</td>
	</tr>

	<tr>
	<td align="center">
		<table>
			<tr>
				<td class="con_text">아이디: </td>
				<td><input class="input_box" type="text" name="mid"></td>
			</tr>
			<tr>
				<td class="con_text">비밀번호: </td>
				<td><input class="input_box" type="password" name="mpw"></td>
			</tr>
			<tr>
				<td class="con_text">비밀번호 확인: </td>
				<td><input class="input_box" type="password" name="mpw_check"></td>
			</tr>
			<tr>
				<td class="con_text">이름: </td>
				<td><input class="input_box" type="text" name="mname"></td>
			</tr>
			<tr>
				<td class="con_text">전화번호: </td>
				<td><input class="input_box" type="text" name="mphone"></td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" class="con_btn" value="가입완료" onclick="joinCheck()">&nbsp;&nbsp;
					<input type="button" class="con_btn" value="로그인" onclick="javascript:window.location.href='login'">
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