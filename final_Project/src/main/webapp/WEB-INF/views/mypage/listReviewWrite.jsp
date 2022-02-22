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
				<div id="reviewBeforeList">
					<ul class="list_before">
						<c:forEach var="r" items="${list }">
							<li>
								<div>
									<div name="order_no">�ֹ���ȣ  ${r.order_no }</div>
									<img src="/images/${r.product_img }" width="80px" height="80px" name="product_img">
									<div class="name" name="product_name">${r.product_name }</div>
									<a href="/mypage/updateReview/${r.order_no }">�ı��ۼ�</a>
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