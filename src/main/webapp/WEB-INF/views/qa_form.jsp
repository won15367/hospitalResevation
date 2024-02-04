<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<c:if test="${loginFlag == 0}">
		<script type="text/javascript">
			alert("문의를 남기기 위해서는 로그인이 필요합니다.")
			history.go(-1)
		</script>
	</c:if>
	
	<form action="qaCheck" name="qaForm">
	<table border="0" cellpadding="20" cellspacing="0" style=";margin-left:auto;margin-right:auto;">
	<tr>
		<td align="center">
			<span class="title01">문의하기</span>
		</td>
	</tr>

	<tr>
	<td class="con_box" align="center">
		<table>
			<tr>
				<td class="con_text">아이디: </td>
				<td><input class="input_box" type="text" value="${mid }" name="qaid" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">성함: </td>
				<td><input class="input_box" type="text" value="${mname }" name="qaname" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="con_text">문의내용: </td>
				<td>
					<textarea class="btextarea" rows="10" cols="30" name="qaquestion">문의 내용을 적어주세요.</textarea>
				</td>
			</tr>
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan=2 align="center">
					<input type="submit" class="con_btn" value="작성완료">&nbsp;&nbsp;
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