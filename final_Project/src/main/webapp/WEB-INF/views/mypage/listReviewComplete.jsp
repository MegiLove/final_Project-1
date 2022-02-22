<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="header"><!-- ��� --></div>
		<div class="page_article">
			<div><!-- �޴� --></div>
			<div class="page_section">
				<div class="head_article">
					<h2>��ǰ �ı�</h2>
				</div>
				<div id="reviewView">
					<ul class="tab_menu">
						<li><a href="/mypage/listReviewWrite">�ۼ����� �ı�</a></li>
						<li><a href="/mypage/listReviewComplete">�ۼ��Ϸ� �ı�</a></li>
					</ul>
				</div>
				<div id="reviewAfterList">
					<ul class="list_after">
						<c:forEach var="r" items="${list }">
							<li>
								<div>
									<div class="name">${r.product_name }</div>
									<div class="title">${r.review_title }</div>
									<a href="/mypage/deleteReview/${r.review_no }">����</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div id="footer"><!-- Ǫ�� --></div>
	</div>
	
</body>
</html>