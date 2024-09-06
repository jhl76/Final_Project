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
<title>PosterMyPage.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">

	$(function()
	{
		$("#imageBtn").click(function()
		{
			//alert($("#profileImage").val());
			//--==>> C:\fakepath\alba.jpg
			$(location).attr("href", "profileimageupload.action?profileImage=" + $("#profileImage").val());
		});
	});

</script>


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
		    <div class="card-header bg-info text-white text-center">
		        <div class="form-group mb-3 text-center">
		            <h5 class="card-title mb-0">${dto.loginId  }님의 마이페이지</h5> 
		        </div>
		    </div>
		
		    <div class="card-body">
		    	<div class="mb-3 text-center">
		    	<img src="images/alba.jpg" class="rounded-circle" alt="Profile Picture" style="width: 150px; height: 150px; object-fit: cover;">
                <div class="mb-3 text-center">
                    <input type="file" id="profileImage" name="profileImage" class="form-control d-inline-block" style="width: auto;" />
                    <button type="button" class="btn btn-info" id="imageBtn">변경</button>
                </div>
		    	<form action="postermypageupdateform.action" method="post">
		    		<input type="hidden" name="pId" value="${dto.pId }" />
		    		<input type="hidden" name="piId" value="${dto.piId }" />
		    		<%-- <input type="hidden" name="pciId" value="${dto.pciId }" />
		    		<input type="hidden" name="cId" value="${dto.cId }" /> --%>
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold ">아이디</span>
		    			<input type="text" class="form-control text-center" name="loginId" value="${dto.loginId }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">비밀번호</span>
		    			<input type="password" class="form-control text-center" name="posterPwd"  value="${dto.posterPwd }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold ">이름</span>
		    			<input type="text" class="form-control text-center" name="posterName" value="${dto.posterName }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">전화번호</span>
		    			<input type="text" class="form-control text-center" name="posterTel" value="${dto.posterTel }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">주민번호 앞자리</span>
		    			<input type="text" class="form-control text-center" name="posterSsn"  value="${dto.posterSsn }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="mb-3">
		    			<span class="text-dark fw-bold">이메일</span>
		    			<input type="text" class="form-control text-center" name="posterEmail" value="${dto.posterEmail }" readonly="readonly" />
		    		</div>
		    		
		    		<div class="form-group mb-3 text-center">
	                    <button type="submit" class="btn btn-info" id="submitBtn">Edit</button>
	                </div>
		    	</form>
	                
		    	</div>
		    </div>
	</div>
</div>


<!-- 구인자의 3년이내 채용 완료한 공고와 근로계약서 -->
<div>

<c:forEach var="dto" items="${postingList }">

	<div>${dto.title }</div>
	<div>${dto.companyName }</div>
	<div>${dto.locationName }</div>
	<div>${dto.categoryName }</div>
	<div>${dto.hourlyWage }</div>
	<div>${dto.workStartTime }</div>
	<div>${dto.workEndTime }</div>
	<div>${dto.title }</div>

</c:forEach>


</div>



</body>
</html>