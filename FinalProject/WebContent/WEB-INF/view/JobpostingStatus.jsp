<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobpostingStatus.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">

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
                    <a class="nav-link" href="postermypage.action?loginId=${loginId }&pId=${pId}">
                        <img src="images/my.png" style="width: 20px; height: 20px;" alt="MY PAGE"/> MY PAGE
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">공고 현황</a>
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

<!-- 
    1. bg-
	용도: 배경 색상 설정
	예시: bg-primary, bg-success, bg-danger
	bg-primary는 부트스트랩의 기본 색상 중 하나인 파란색 배경을 적용합니다.
	bg-success는 성공을 나타내는 녹색 배경을 적용합니다.
	bg-danger는 경고를 나타내는 빨간색 배경을 적용합니다.
	2. mt-
	용도: 상단 여백 (margin-top) 설정
	예시: mt-1, mt-3, mt-5
	mt-1은 상단 여백을 최소값으로 설정합니다.
	mt-3은 중간 크기의 상단 여백을 설정합니다.
	mt-5는 최대 크기의 상단 여백을 설정합니다.
	3. mb-
	용도: 하단 여백 (margin-bottom) 설정
	예시: mb-1, mb-3, mb-5
	mb-1은 하단 여백을 최소값으로 설정합니다.
	mb-3은 중간 크기의 하단 여백을 설정합니다.
	mb-5는 최대 크기의 하단 여백을 설정합니다.
	4. my-
	용도: 상하 여백 (margin-top과 margin-bottom) 설정
	예시: my-1, my-3, my-5
	my-1은 상하 여백을 최소값으로 설정합니다.
	my-3은 중간 크기의 상하 여백을 설정합니다.
	my-5는 최대 크기의 상하 여백을 설정합니다.
-->

<!-- 공고 목록 -->
<div class="container my-4">

	<div class="card mb-4">
	    <div class="card-header ">
	        <div>
	            <span class="text-primary">공고 현황</span> 
	        </div>
	    </div>
	
	    <div class="card-body">
	        <div class="d-flex justify-content-between">
	            <div class="badge-container">
	            	<span class="badge bg-secondary">
	                    채용 대기
	            	</span>
	                <span class="badge bg-dark">1</span>
	                
	                <span class="badge bg-danger">
	                    채용 마감
	            	</span>
	                <span class="badge bg-dark">0</span>
	                
	                <span class="badge bg-primary">
	                    채용 중
	            	</span>
	                <span class="badge bg-dark">0</span>
	                
	                <span class="badge bg-primary">
	                    근무 대기
	            	</span>
	                <span class="badge bg-dark">0</span>
	                
	                <span class="badge bg-success">
	                    근무 완료
	            	</span>
	                <span class="badge bg-dark">0</span>
	            </div>
	        </div>
	
	    </div>
	</div>
    
    <div class="accordion">
	    <div class="accordion-item">
    	<c:forEach var="dto" items="${list }">
	        
	        <h2 class="accordion-header">
	            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne${dto.postingId }" aria-expanded="true" aria-controls="collapseOne">
	                    ${dto.title }
	            </button>
	            <div class="form-control">
	                <button type="button" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editModal">수정</button>
	                <button type="button" class="btn btn-outline-danger btn-sm">삭제</button>
	                <button type="button" class="btn btn-outline-info btn-sm">끌어올리기</button>
	            </div>
	        </h2>
	        
	        <div id="collapseOne${dto.postingId }" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
	            <div class="accordion-body">
	                    <div class="form-control">
	                        <span class="text-black">공고 상태</span>
	                        <span class="badge bg-secondary">${dto.openStatus }</span>
	                    </div>
	                    <div class="form-control">
	                        <span class="text-black">모집 인원 수</span>
	                        <span class="badge bg-secondary">${dto.headcount }</span>
	                    </div>
	                    <div class="form-control">
	                        <span class="text-black">지원자 수</span>
	                        <span class="badge bg-secondary">${dto.count }</span>
	                    </div>
	                    <div class="form-control">
	                        <span class="text-black">공고 마감시간</span>
	                        <span class="badge bg-secondary">${dto.closingTime }</span>
	                    </div>
	                    
	                    <div class="form-control">
	                        <span class="text-black">분야명</span>
	                        <span class="badge bg-secondary">${dto.categoryName}</span>
	                    </div>
	
	                    <div class="form-control">
	                        <span class="text-black">시급</span>
	                        <span class="badge bg-secondary"><fmt:formatNumber type="currency" value="${dto.hourlyWage }" /></span>
	                    </div>
	                    
	                    <div class="form-control">
	                        <span class="text-black">근무 내용</span>
	                        <span class="badge bg-secondary">${dto.workContent }</span>
	                    </div>
	                    
	                    
	                    <div class="form-control">
	                        <span class="text-black">회사/업체명</span>
	                        <span class="badge bg-secondary">${dto.companyName }</span>
	                    </div>
	                    
	                    <div class="form-control">
	                        <span class="text-black">근무지 위치</span>
	                        <span class="badge bg-secondary">${dto.locationName }</span>
	                    </div>
	                    <div class="form-control">
	                        <span class="text-black">근무 시간</span>
	                        <span class="badge bg-secondary">${dto.workStartTime} ~ ${dto.workEndTime }</span>
	                    </div>
	                    
	                    <div class="form-control">
	                    	지원자 목록
		                    
		                    <ul>
		                        <li><span class="text-success">문창재</span> - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
		                        <li><span class="text-success">유준혁</span> - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
		                        <li><span class="text-success">김정현</span> - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
		                    </ul>
	                    </div>
	            </div>
	        </div>
        </c:forEach>
    </div>
</div>

    
</div>


</body>
</html>