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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">

</script>

</head>
<body>

<div class="sidebar">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
               <img src="images/alba.jpg" class="img-responsive" style="width: 10%; display: inline-block; vertical-align: middle;"/>
               <h1 style="display: inline-block; vertical-align: middle; margin-left: 10px;">CHODANGIALBA</h1>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                	<li>
                		<a href="#">
                			<img src="images/my.png" style="width: 20px; height: 20px;" />MY PAGE
                		</a>
                	</li>
                    <li class="active">
                        <a href="#">
                            공고 현황
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            공고 작성
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            스크랩
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            평가리스트
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>


<!-- 공고 목록 -->
<div class="content">

	<div class="panel panel-primary job-status">
	    <div class="panel-heading">
	        <h3 class="panel-title" style="display: flex; justify-content: space-between; align-items: center;">
	            공고 현황 
	        </h3>
	    </div>
	
	    <div class="panel-body">
	        <div class="status-box-container">
	            <div class="badge-container">
	            	<span>
	                    채용 대기
	            	</span>
	                <span class="badge">1</span>
	                <span>
	                    채용 마감
	            	</span>
	                <span class="badge">0</span>
	                <span>
	                    채용 중
	            	</span>
	                <span class="badge">0</span>
	                <span>
	                    근무 대기
	            	</span>
	                <span class="badge">0</span>
	                <span>
	                    근무 완료
	            	</span>
	                <span class="badge">0</span>
	            </div>
	        </div>
	
	    </div>
	</div>
    
    <div class="panel-group" >
    
        <div class="panel panel-primary">
        
            <div class="panel-heading">
            	
                <h4 class="panel-title" style="display: flex; justify-content: space-between; align-items: center;">
                <c:forEach var="dto" items="${list }">
                    <a data-toggle="collapse" href="#collapseOne" style="text-decoration: none; font-size: 27px; font-weight: bold; color: white;">${dto.title }</a>
				    <div>
                        <button type="button" class="btn btn-default btn-custom" data-toggle="modal" data-target="#editModal" style="color: blue;">수정</button>
				        <button type="button" class="btn btn-default btn-custom" style="color: blue;">삭제</button>
				        <button type="button" class="btn btn-default btn-custom" style="color: blue;">끌어올리기</button>
				    </div>
                </c:forEach>
                </h4>
                
                
            </div>
            
            <div class="panel-body">
            	
            	<c:forEach var="dto" items="${list }">
            	<div>
					공고 상태
					<span class="badge" style="font-size: medium;">${dto.openStatus }</span>
				</div>
				
            	<div>
					모집 인원 수
					<span class="badge" style="font-size: medium;">${dto.headcount }</span>
            	</div>
				
				<div>
					지원자 수
					<span class="badge" style="font-size: medium;">${dto.count }</span>
				</div>
				
				<div>
					공고 마감시간
					<span class="badge" style="font-size: medium;">${dto.closingTime }</span>
				</div>
            	</c:forEach>
				
			</div>
			
            <div id="collapseOne" class="panel-collapse collapse">
                <div class="panel-body">
                <c:forEach var="dto" items="${list }">
                    <div>
						시급
						<span class="badge" style="font-size: medium;"><fmt:formatNumber type="currency" value="${dto.hourlyWage }" /></span>
					</div>
					<div>
						회사/업체명
						<span class="badge" style="font-size: medium;">${dto.companyName }</span>
					</div>
					<div>
						근무지 위치
						<span class="badge" style="font-size: medium;">${dto.locationName }</span>
					</div>
					<div>
						근무 시간
						<span class="badge" style="font-size: medium;">${dto.workStartTime} ~ ${dto.workEndTime }</span>
					</div>
					<div>
						사전 교육
						<ul>
							<li>
								사전 교육 명
								<span class="badge" style="font-size: medium;">${dto.preName }</span>
							</li>
							<li>
								사전 교육 난이도
								<span class="badge" style="font-size: medium;">${dto.preDifficulty }</span>
							</li>
							<li>
								사전 교육 시간
								<span class="badge" style="font-size: medium;">${dto.preTime }</span>
							</li>
						</ul>
					</div>
					
					<h4>지원자 목록</h4>
					
                    <ul>
                        <li>문창재 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                        <li>유준혁 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                        <li>김정현 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                    </ul>
                </c:forEach>
                </div>
                
            </div>
            
        </div>
        
    </div>
    
</div>


</body>
</html>