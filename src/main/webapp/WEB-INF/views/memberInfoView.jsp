<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/info.css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>

	<table class="infomain" cellpadding="5" cellspacing="0">
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr><td colspan="2" align="center"><span class="title01">나의 정보 확인</span></td></tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr>
			<td width="10%" valign="top">
				<table class="infotable01">
					<tr><th class="mname">${memberDto.mname } 님</th></tr>
					<tr><td><a href="memberInfo">예약내역</a></td></tr>
					<tr><td><a href="memberQalist">문의내역</a></td></tr>
					<tr><td><a href="memberInfoView">회원정보</a></td></tr>
				</table>
			</td>
	
			<td width="35%">
			<table border="0" cellpadding="2" cellspacing="0">
				<tr>
					<th class="btitle" colspan="2">회원정보</th>
				</tr>
				<tr>
					<td class="con_text">아이디: </td>
					<td align="left">${memberDto.mid }<input type="hidden" name="mid" value="${memberDto.mid }"></td>
				</tr>
				<tr>
					<td class="con_text">이름: </td>
					<td><input class="input_box" type="text" name="mname" value="${memberDto.mname }"></td>
				</tr>
				<tr>
					<td class="con_text">전화번호: </td>
					<td><input class="input_box" type="text" name="mphone" value="${memberDto.mphone }"></td>
				</tr>
				<tr>
					<td class="con_text">가입일: </td>
					<td><input class="input_box" type="text" name="mdate" value="${memberDto.mdate }"></td>
				</tr>
				<tr><td colspan="6">&nbsp;</td></tr>
					<tr><td colspan="6"><input type="button" value="수정하기" onclick="javascript:window.location.href='modify'"></td></tr>
			</table>
			</table>
	
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>