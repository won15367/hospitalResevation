<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>
	<table border="0" cellpadding="5" cellspacing="0" width="100%">
		<tr class="headerline">
			<td>
				<a href="index"><img src="/resources/img/logo.png"/></a>
			</td>
			<td class="menutext" width="21%">
				&nbsp;
			</td>
			
		<c:choose>
			<c:when test="${sessionScope.sessionId eq null }">
				<td class="menutext" width="11%" align="center">
					<a href="login"><span class="menutext">로그인</span></a>
				</td>
				<td class="menutext" width="5%">
				&nbsp;
				</td>
				<td class="menutext" width="11%" align="center">
					<a href="join"><span class="menutext">회원가입</span></a>
				</td>
				<td class="menutext" width="5%">
				&nbsp;
				</td>
			</c:when>
			
			<c:otherwise>
				<td class="menutext" width="11%" align="center">
					<a href="logout"><span class="menutext">로그아웃</span></a>
				</td>
				<td class="menutext" width="5%">
				&nbsp;
				</td>
				<td class="menutext" width="11%" align="center">
					<a href="memberInfo"><span class="menutext">나의 정보</span></a>
				</td>
				<td class="menutext" width="5%">
				&nbsp;
				</td>
			</c:otherwise>
		</c:choose>
		
			<td class="menutext" width="11%" align="center">
				<a href="qaForm"><span class="menutext">문의하기</span></a>
			</td>
			<td class="menutext" width="5%">
				&nbsp;
			</td>
			<td class="menutext" width="11%" align="center">
				<a href="contact"><span class="menutext">오시는길</span></a>
			</td>
			<td width="20%" align="center">
				&nbsp;
			</td>
		</tr>
		<tr height="20">
			<td colspan="10" align="right">
				<c:if test="${sessionScope.sessionId != null}">
					<c:out value="${sessionScope.sessionId}"></c:out>
					님 로그인 중 
				</c:if>
		</td></tr>
	</table>
</body>
</html>