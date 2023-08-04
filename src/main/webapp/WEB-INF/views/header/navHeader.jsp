<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
		<link rel="icon" href="" type="image/x-icon" />
		<title>skkcandle</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<%-- 부트스트랩 아이콘 --%>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header/navHeader.css">
		<script src="${pageContext.request.contextPath}/resources/js/newHeader.js"></script>
	</head>
	<body>
		<nav class="navbar row">
			<!-- <div class="col-5"></div> -->
			<div class="navbar_logo_box col-auto">
				<a class="navbar_logo" href="#">
					<img src="${pageContext.request.contextPath}/resources/images/skkcandle_nuki2.png" alt="이미지를 로드할 수 없습니다">
				</a>				
			</div>
			
			<!-- <div class="navbar_search col-5">
				<form method="get" action="#" class="navbar_search_form">
					<div class="navbar_search_input">
						<input type="search" class="form-control" placeholder="Search...">
					</div>
					<button class="navbar_search_button" type="submit" class="btn">
						<i class="bi bi-search"></i>
					</button>
				</form>
			</div> -->
			<div class="col-5 navbar_white_space"></div>
		</nav>
		<nav class="navbar2">
			<!-- <div class="col-3"></div> -->
			<ul class="navbar_menu col-8">
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li>
				<li><a href="#">메뉴3</a></li>
				<li><a href="#">메뉴4</a></li>
				<li><a href="#">메뉴5</a></li>
			</ul>
			<div class="col-4 d-flex icon_menu">
				<button class="mobile_menu">
					<i class="bi bi-list"></i>
				</button>
				<div class="d-flex">
					<a class="navbar_short_icon" href="#">
						<i class="bi bi-person"> Login</i>	
					</a>
					<a class="navbar_short_icon" href="#">
						<i class="bi bi-cart"> Cart</i>	
					</a>
				</div>
				
			</div>
		</nav>
		<div class="navbar_search row">
			<form method="get" action="#" class="navbar_search_form col">
				<div class="navbar_search_input">
					<input type="search" class="form-control" placeholder="Search...">
				</div>
				<button class="navbar_search_button" type="submit" class="btn">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>

	</body>
</html>