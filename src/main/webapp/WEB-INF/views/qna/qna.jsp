<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="" type="image/x-icon" />
		<title>문의 페이지</title>
	
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<%-- 부트스트랩 아이콘 --%>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qna/qna.css">
		<script src="${pageContext.request.contextPath}/resources/js/qna/qna.js"></script>
	</head>
	<body>
		<h1>상품 문의 페이지</h1>
	    <form method="post" action="#">
	        <label for="title">제목:</label>
	        <input type="text" id="title" name="title" required>
	
	        <label for="content">내용:</label>
	        <textarea id="content" name="content" rows="5" placeholder="내용을 입력하세요." required></textarea>
	
	        <input type="submit" value="문의하기">
	    </form>
</html>