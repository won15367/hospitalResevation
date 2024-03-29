<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/title.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>Profile Home</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<form action="modifyOk" method="post" name="modifyForm">
	<table border="0" cellpadding="20" cellspacing="0" style=";margin-left:auto;margin-right:auto;">
	<tr>
		<td align="center">
			<span class="title01">회원정보 수정</span>
		</td>
	</tr>

	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="con_text">아이디: </td>
				<td align="left">${memberDto.mid }<input type="hidden" name="mid" value="${memberDto.mid }"></td>
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
				<td><input class="input_box" type="text" name="mname" value="${memberDto.mname }"></td>
			</tr>
			<tr>
				<td class="con_text">전화번호: </td>
				<td><input class="input_box" type="text" name="mphone" value="${memberDto.mphone }"></td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" class="con_btn" value="수정완료" onclick="modifyCheck()">
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