<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1:1 문의</h2>
	<br>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>			
			<td>작성일</td>			
		</tr>
		<c:forEach var="q" items="${list }">
			<tr>
				<td>${q.qna_no }</td>	
				<td><a href="detailQna?qna_no=${q.qna_no }">${q.qna_title }</a></td>	
				<td>${q.qna_date }</td>	
			</tr>
		</c:forEach>
	</table>
	<a href="insertQna">문의작성</a>
	
</body>
</html>