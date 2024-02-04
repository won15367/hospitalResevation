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

	<table table class="infomain" cellpadding="5" cellspacing="0">
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr><td colspan="2" align="center"><span class="title01">관리자 페이지</span></td></tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr>
			<td width="10%" valign="top">
				<table class="infotable01">
					<tr><th class="mname">관리자 님</th></tr>
					<tr><td><a href="memberInfo">예약관리</a></td></tr>
					<tr><td><a href="memberQalist">문의관리</a></td></tr>
					<tr><td><a href="memberInfoView">회원정보</a></td></tr>
				</table>
			</td>
	
			<td width="35%">
				<table class="infotable" cellpadding="2" cellspacing="0">
					<tr>
						<th class="btitle">예약번호</th>
						<th class="btitle">성명</th>
						<th class="btitle">예약날짜</th>
						<th class="btitle">예약시간</th>
						<th class="btitle">예약등록일</th>
						<th class="btitle">상세보기</th>
					</tr>
					
					<c:forEach items="${rdtos }" var="dto">
						<tr>
							<td class="bcontent" align="center">${dto.rnum }</td>
							<td class="bcontent" align="center">${dto.rname }</td>
							<td class="bcontent" align="center">${dto.rdate }</td>
							<td class="bcontent" align="center">${dto.rtime }</td>
							<td class="bcontent" align="center">${dto.rmaketime }</td>
							<td class="bcontent" align="center" style="font-weight:bold;"><a href="reserve_view?rnum=${dto.rnum }">상세보기</a></td>
						</tr>
					</c:forEach>

				</table>
			</td>
	
		</tr>
	</table>
	
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>