<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<c:choose>
		<c:when test="${failFlag == 1 }">
			<script type="text/javascript">
				alert("해당 시간에 이미 예약이 존재합니다.")
				history.go(-1)
			</script>
		</c:when>
		
		<c:otherwise>
			<meta http-equiv="refresh" content="0;url=memberInfo">
		</c:otherwise>
	</c:choose>

	<%@ include file="include/footer.jsp" %>
</body>
</html>