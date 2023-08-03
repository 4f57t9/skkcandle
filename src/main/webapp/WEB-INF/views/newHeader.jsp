<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="" type="image/x-icon" />
		<title>skkcandle</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<%-- 부트스트랩 아이콘 --%>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newHeader.css">
		<script src="${pageContext.request.contextPath}/resources/js/newHeader.js"></script>
	</head>
	<body>
		<div id="container">
			<div id="header_area">
			    <header id="header">
			        <div class="container">
			            <div class="row justify-content-between align-items-center">
						    <!-- 미니아이콘 -->
						    <div class="col-auto">
						        <ul class="d-flex justify-content-between">
						            <li>
						                <a href="#">
						                    <i class="bi bi-heart"></i>
						                </a>
						            </li>
						            <li>		
						                <a href="#">
						                    <i class="bi bi-cart"></i>
						                </a>
						            </li>
						        </ul>
						    </div>

			                <!-- 메인 로고 -->
			                <div id="main_logo" class="col-auto">
			                    <h1>
			                        <a href="#">
			                            <img src="${pageContext.request.contextPath}/resources/images/skkcandle_nuki2.png" width="200" height="100" alt="이미지를 로드할 수 없습니다">
			                        </a>
			                    </h1>
			                </div>
							
							<!-- 검색바 -->
			                <div id="search_bar" class="col-auto">
							    <form method="get" action="#" class="d-flex align-items-center" style="outline: none;">
							        <div class="form-group mb-0 mr-2">
							            <input type="search" class="form-control search" name="search" placeholder="Search...">
							        </div>
							        <button type="submit" class="btn btn-primary zindex">
							            <i class="bi bi-search"></i>
							        </button>
							    </form>
							</div>
			            </div>
			        </div>
			    </header>
			</div>
		</div>
	</body>
</html>