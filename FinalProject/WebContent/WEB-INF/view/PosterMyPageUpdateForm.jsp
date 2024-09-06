<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PosterMyPageUpdateForm.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="mainpage.action">
            <img src="images/alba.jpg" class="img-fluid" style="width: 10%; display: inline-block; vertical-align: middle;" alt="CHODANGIALBA"/>
            <h1 class="d-inline-block align-middle ms-2">CHODANGIALBA</h1>
        </a>
        <div class="navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        <img src="images/my.png" style="width: 20px; height: 20px;" alt="MY PAGE"/> MY PAGE
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="jobpostingstatus.action">공고 현황</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="postinginsertform.action">공고 작성</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="posterbookmark.action">구직자 즐겨찾기</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">평가리스트</a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<div class="container my-4">
	<div class="card mb-4">
		    <div class="card-header bg-success text-white text-center">
		        <div class="form-group mb-3 text-center">
		            <h5 class="card-title mb-0">${dto.loginId }님의 마이페이지 수정</h5> 
		        </div>
		    </div>
		
		    <div class="card-body">
		    	<div class="mb-3 text-center">
		    	<form action="postermypageupdate.action" method="post">
		    		<input type="hidden" name="piId" value="${dto.piId }" />
		    		<%-- <input type="hidden" name="pciId" value="${dto.pciId }" />
		    		<input type="hidden" name="cId" value="${dto.cId }" /> --%>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold ">아이디</span>
		    			<input type="text" class="form-control text-center" name="loginId" value="${dto.loginId }" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">비밀번호</span>
		    			<input type="password" class="form-control text-center" name="posterPwd" value="${dto.posterPwd }" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold ">이름</span>
		    			<input type="text" class="form-control text-center" name="posterName" value="${dto.posterName }" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">전화번호</span>
		    			<input type="text" class="form-control text-center" name="posterTel" value="${dto.posterTel }" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">주민번호 앞자리</span>
		    			<input type="text" class="form-control text-center" name="posterSsn" value="${dto.posterSsn }" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">이메일</span>
		    			<input type="text" class="form-control text-center" name="posterEmail" value="${dto.posterEmail }" />
		    		</div>
		    		
		    		<div class="form-group mb-3 text-center">
	                    <button type="submit" class="btn btn-success" id="submitBtn">수정</button>
	                </div>
		    	</form>
	                
		    	</div>
		    </div>
	</div>
</div>


</body>
</html>