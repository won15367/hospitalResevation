<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>Profile Home</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<form action="qaCheck" name="qaForm">
	<table border="0" cellpadding="20" cellspacing="0" style=";margin-left:auto;margin-right:auto;">
	<tr>
		<td align="center">
			<span class="title01">답변확인</span>
		</td>
	</tr>

	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="con_text">성함: </td>
				<td><input class="input_box" type="text" value="${dto.qaname }" name="qaname" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">문의내용: </td>
				<td>
					<textarea class="btextarea" rows="10" cols="30" name="qaquestion" readonly="readonly">${dto.qaquestion }</textarea>
				</td>
			</tr>
			
			<tr>
				<td class="con_text">답변: </td>
				<td>
					<c:choose>
						<c:when test="${dto.qaanswer eq null }">
							<textarea class="btextarea" rows="10" cols="30" name="qaquestion" readonly="readonly">현재 문의내용을 확인중입니다.</textarea>
						</c:when>
						<c:otherwise>
							<textarea class="btextarea" rows="10" cols="30" name="qaquestion" readonly="readonly">${dto.qaanswer }</textarea>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" class="con_btn" value="돌아가기" onclick="javascript:window.location.href='memberQalist'">
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