<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
					<h2>�ı� �ۼ�</h2>
				</div>
				<form name="form_review" id="form_review" action="/mypage/updateReview" method="post" enctype="multipart/form-data">
					<div class="write_board">
						<div class="goods_info">
							<img src="/images/${r.product_img }">
							<div class="name">${r.product_name }</div>
						</div>
						<table class="tbl">
							<colgroup>
								<col style="width:110px;">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th>����</th>
									<td>
										<input type="text" name="review_title" placeholder="������ �Է����ּ���." class="inp">
									</td>
								</tr>
								<tr>
									<th>�ı��ۼ�</th>
									<td>
										<textarea id="fieldCmt" name="review_content" rows="10" cols="100" 
											placeholder="������ �Է����ּ���.��ǰ/ȯ�� ���Ǵ� ��ǰ���Ƿ� �����մϴ�." style="height:202px;"></textarea>
									</td>
								</tr>
								<tr>
									<th>�������</th>
									<td>
										<input type="file" name="uploadFile">
									</td>
								</tr>
							</tbody>
						</table>
						<button type="button" id="btnSubmit" class="btn_reg"></button>
					</div>
				</form>
			</div>
		</div>
		<div id="footer"><!-- Ǫ�� --></div>
	</div>
</body>
</html>