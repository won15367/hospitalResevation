<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/board.css">
<script type="text/javascript" src="/resources/js/write.js"></script>
<title>Profile Home</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<form action="write" name="writeForm">
	<table border="0" cellpadding="20" cellspacing="0" style=";margin-left:auto;margin-right:auto;">
	<tr>
		<td align="center">
			<span class="title01">예약상세</span>
		</td>
	</tr>
	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="con_text">예약번호</td>
				<td><input class="input_box" type="text" name="rnum" value="${dto.rnum }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">성함</td>
				<td><input class="input_box" type="text" name="rname" value="${dto.rname }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">예약일</td>
				<td><input class="input_box" type="text" name="rdate" value="${dto.rdate }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">예약시간</td>
				<td><input class="input_box" type="text" name="rtime" value="${dto.rtime }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">증상</td>
				<td>
					<textarea class="btextarea" rows="10" cols="30" name="rcontent" readonly="readonly">${dto.rcontent }</textarea>
				</td>
			</tr>	
			<tr>
				<td class="con_text">등록일</td>
				<td><input class="input_box" type="text" name="rmaketime" value="${dto.rmaketime }" readonly="readonly"></td>
			</tr>
					
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" class="con_btn" value="예약취소" onclick="javascript:window.location.href='reserve_delete?rnum=${dto.rnum}'">&nbsp;&nbsp;
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