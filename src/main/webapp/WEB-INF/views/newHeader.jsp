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
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newHeader.css">
		<script src="${pageContext.request.contextPath}/resources/js/newHeader.js"></script>
	</head>
	<body>
		<div class="container">
			<div id="header_area" class="row d-flex justify-content-end align-items-center pt-5">
                <!-- 메인 로고 -->
                <div id="main_logo" class="col-6">
                    <h1>
                        <a href="#" class="d-flex align-items-center justify-content-center">
                            <img src="${pageContext.request.contextPath}/resources/images/skkcandle_nuki2.png" alt="이미지를 로드할 수 없습니다">
                        </a>
                    </h1>
                </div>
				<!-- 검색바 -->
				<div id="search_bar" class="col-3">
					<form method="get" action="#" class="d-flex flex-row align-items-center">
						<div id="search_input">
							<input type="search" class="form-control" placeholder="Search...">
						</div>
						<button id="search_btn" type="submit" class="btn">
							<i class="bi bi-search" style="color: white;"></i>
						</button>
					</form>
				</div>
           </div>
       </div>
	</body>
</html>