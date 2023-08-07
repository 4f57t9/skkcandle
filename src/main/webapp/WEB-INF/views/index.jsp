<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="/html_css_javascript/favicon.ico" type="image/x-ico">
      <title>인덱스 페이지</title>
   </head>
   <body>
	   <div>
	   	  <%@include file ="header/navHeader.jsp" %>
	   </div>
      
      <div class="d-flex justify-content-center">
      	<form method="post" action="writeReview">
	      	<input type="number" id="reviewId" name="reviewId">
	      	<input type="number" id="productId" name="productId">
	      	<input type="number" id="userId" name="userId">
	      	<input type="text" id="reviewTitle" name="reviewTitle">
	      	<input type="text" id="reviewContent" name="reviewContent">
	      	<button > 넣기 수정하기</button>
	      </form>
      </div>
      
      <div>
	      <%@include file ="mainPage/mainPage.jsp" %>      
      </div>
      
      <div>
	      <%@include file ="footer/footer.jsp" %>      
      </div>
   </body>
</html>
