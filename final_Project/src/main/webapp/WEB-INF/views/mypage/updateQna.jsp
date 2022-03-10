<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/common.css" type="text/css">
<link rel="stylesheet" href="../resources/css/mypageCommon.css" type="text/css">
</head>
<body>

	<div id="container">
		<div><jsp:include page="../common/header.jsp"></jsp:include></div>
		<div class="page_article">
		
		
			<div id="snb">
				<h2 class="tit_snb">마이보글</h2>
				<div class="inner_snb">
					<ul class="list_menu">
						<li><a href="/mypage/orderList">주문 내역</a></li>
						<li><a href="/mypage/listReviewWrite">상품 후기</a></li>
						<li><a href="/mypage/listQna">상품 문의</a></li>
						<li><a href="/mypage/loginMypage">개인 정보 수정</a></li>
					</ul>
				</div>
			</div>
			
			

			<h2>1:1 문의 수정</h2>
			<form action="updateQna" method="post" enctype="multipart/form-data">
				<input type="hidden" name="qna_no" value="${q.qna_no }" ><br>
				제목  <input type="text" name="qna_title" value="${q.qna_title}"><br>
				주문번호  <input type="text" name="detail_no" value="${q.detail_no}"><br>
				문의내용  <textarea rows="10" cols="80" name="qna_content">${q.qna_content }</textarea><br>
				첨부파일  
				<input type="hidden" name="fname" value="${q.qna_img }">
				<input type="file" name="uploadFile">(${q.qna_img })<br>
				<a href="deleteQna?qna_no=${q.qna_no }">삭제</a>
				<input type="reset" value="취소">
				<input type="submit" value="확인">
			</form>
	
			</div>
		
	</div>
	<div><jsp:include page="../common/footer.jsp"></jsp:include></div>
</body>
</html>