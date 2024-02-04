<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
						<th class="btitle">문의번호</th>
						<th class="btitle">성명</th>
						<th class="btitle">문의날짜</th>
						<th class="btitle">문의내용</th>
						<th class="btitle">상세보기</th>
					</tr>
					
					<c:forEach items="${qaDtos }" var="dto">
						<tr>
							<td class="bcontent" align="center">${dto.qanum }</td>
							<td class="bcontent" align="center">${dto.qaname }</td>
							<td class="bcontent" align="center">
								<c:out value ="${fn:substring(dto.qadate,0,11)}"/>
							</td>
							<td class="bcontent" align="center">
								<c:choose>
								<c:when test="${fn:length(dto.qaquestion) > 20 }">
									<c:out value ="${fn:substring(dto.qaquestion,0,19)}"/>...
								</c:when>								
								<c:otherwise>
									${dto.qaquestion }
								</c:otherwise>
								</c:choose>
							</td>
							<td class="bcontent" align="center" style="font-weight:bold;"><a href="qaView?qanum=${dto.qanum }">상세보기</a></td>
						</tr>
					</c:forEach>

				</table>
			</td>
	
		</tr>
	</table>
	
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>