<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/title.css">
<script type="text/javascript" src="/resources/js/reserve.js"></script>
<title>Profile Home</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<form action="reserveOk" method="post" name="reserveForm">
	<table border="0" cellpadding="20" cellspacing="0" style=";margin-left:auto;margin-right:auto;">
	<tr>
		<td align="center">
			<span class="title01">진료예약</span>
		</td>
	</tr>

	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="con_text">아이디: </td>
				<td><input type="hidden" value="${rid }" name="rid">${rid }</td>
			</tr>
			<tr>
				<td class="con_text">이름: </td>
				<td><input type="hidden" value="${rname}" name="rname">${rname }</td>
			</tr>
			<tr>
				<td class="con_text">예약날짜: </td>
				<td><input class="input_box" type="date" name="rdate"></td>
			</tr>
			<tr>
				<td class="con_text">예약시간: </td>
				<td><select name="rtime" size="1">
					<option value="10:00">10:00</option>
					<option value="11:00">11:00</option>
					<option value="12:00">12:00</option>
					<option value="13:00">13:00</option>
					<option value="14:00">14:00</option>
					<option value="15:00">15:00</option>
					<option value="16:00">16:00</option>
					<option value="17:00">17:00</option>
				</select></td>
			</tr>
			<tr>
				<td class="con_text">증상: </td>
				<td>
					<textarea name="rcontent" rows="5" cols="20"></textarea>				
				</td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" class="con_btn" value="예약하기" onclick="reserveCheck()">&nbsp;&nbsp;
					<input type="button" class="con_btn" value="돌아가기" onclick="javascript:window.location.href='memberInfo'">
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