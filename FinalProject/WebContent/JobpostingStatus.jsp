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
<title>JobpostingStatus.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">

    
</script>

<style type="text/css">

	.navbar-nav > .active > a
	{
	    background-color: #f8f8f8 !important; /* Background color for active item */
	    color: #337ab7 !important; /* Text color for active item */
	}
	body
	{
        margin: 0;
      	padding: 0;
     	display: flex;
	}
	.sidebar
    {
		width: 250px;
		background-color: #f8f8f8;
		height: 100vh;
		position: fixed;
		top: 0;
		left: 0;
		padding: 15px;
	}
	.content
	{
		margin-left: 250px; /* Sidebar width */
		padding: 15px;
		flex: 1;
	}
	.navbar-nav > .active > a
    {
		background-color: #f8f8f8 !important; /* Background color for active item */
		color: #337ab7 !important; /* Text color for active item */
	}
	.job-status
	{
    margin-top: 20px;
	}

	.status-box-container 
	{
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 15px 0;
	}

	.badge-container 
	{
    background-color: #f7f9fc;
    padding: 10px;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 22%; /* 각 항목의 너비 설정 */
    text-align: center;
    font-size: 16px;
    color: #495057;
    border: 1px solid #e1e8ed; /* 경계선 추가 */
	}

	.badge 
	{
    background-color: #6c757d;
    color: #fff;
    padding: 5px 10px;
    border-radius: 12px;
    margin-left: 10px;
    font-size: 16px;
	}
</style>

</head>
<body>

<!-- 사이드바 -->
<div class="sidebar">
    <nav class="navbar navbar-primary">
        <div class="container-fluid">
            <div class="navbar-header">
               <a href="#" class="navbar-brand" style="display: flex; align-items: center; font-size: 18px; color: aqua;">
				   <img src="images/avatar-icon.png" style="width: 30px; height: 30px; margin-right: 10px;"/>CHODANGIALBA
			   </a>
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
	                <button type="button" class="btn btn-default lg">
	                    <em>채용 대기</em>
	                </button>
	                <span>1</span>
	            </div>
	            <div class="badge-container">
	                <button type="button" class="btn btn-default" >
	                    <em>채용 마감</em>
	                </button>
	                <span>0</span>
	            </div>
	            <div class="badge-container">
	                <button type="button" class="btn btn-default" >
	                    <em>근무 중</em>
	                </button>
	                <span>0</span>
	            </div>
	            <div class="badge-container">
	                <button type="button" class="btn btn-default" >
	                    <em>평가 전</em>
	                </button>
	                <span>0</span>
	            </div>
	            <div class="badge-container">
	                <button type="button" class="btn btn-default" >
	                    <em>평가 완료</em>
	                </button>
	                <span>0</span>
	            </div>
	        </div>
	
	    </div>
	</div>
    
    <div class="panel-group" >
    
        <div class="panel panel-primary">
        
            <div class="panel-heading">
            
                <h4 class="panel-title" style="display: flex; justify-content: space-between; align-items: center;">
                    <a data-toggle="collapse" href="#collapseOne" style="text-decoration: none; font-size: 27px; font-weight: bold; color: white;">니 내랑 일할래 ? ㅋ</a>
				    <div>
                        <button type="button" class="btn btn-default btn-custom" data-toggle="modal" data-target="#editModal" style="color: blue;">수정</button>
				        <button type="button" class="btn btn-default btn-custom" style="color: blue;">삭제</button>
				        <button type="button" class="btn btn-default btn-custom" style="color: blue;">끌어올리기</button>
				    </div>
                </h4>
                
            </div>
            
            <div class="panel-body">
            
            	<div>
					매칭 상태
					<span class="badge" style="font-size: medium;">수락 대기</span>
				</div>
				
            	<div>
					모집 인원 수
					<span class="badge" style="font-size: medium;">5</span>
            	</div>
				
				<div>
					지원자 수
					<span class="badge" style="font-size: medium;">3</span>
				</div>
				
				<div>
					공고 마감일
					<span class="badge" style="font-size: medium;">2024-09-12 16:40</span>
				</div>
				
			</div>
			
            <div id="collapseOne" class="panel-collapse collapse">
                <div class="panel-body">
                    <div>
						시급
						<span class="badge" style="font-size: medium;">9,620원</span>
					</div>
					<div>
						회사/업체명
						<span class="badge" style="font-size: medium;">문창자이컴퍼니</span>
					</div>
					<div>
						근무지 위치
						<span class="badge" style="font-size: medium;">홍대 서교동</span>
					</div>
					<div>
						근무 일시
						<span class="badge" style="font-size: medium;">2024-08-30</span>
					</div>
					<div>
						근무 시간
						<span class="badge" style="font-size: medium;">18:00 ~ 23:00</span>
					</div>
					<div>
						사전 교육
						<ul>
							<li>
								사전 교육 유무
								<span class="badge" style="font-size: medium;">있음</span>
							</li>
							<li>
								사전 교육 난이도
								<span class="badge" style="font-size: medium;">난이도 힘듬 ㅜㅜ</span>
							</li>
							<li>
								사전 교육 시간
								<span class="badge" style="font-size: medium;">1시간</span>
							</li>
						</ul>
					</div>
					
					<h4>지원자 목록</h4>
					
                    <ul>
                        <li>문창재 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                        <li>유준혁 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                        <li>김정현 - <a href="#" style="text-decoration: none;">지원서 상세보기</a></li>
                    </ul>
                </div>
                
            </div>
            
        </div>
        
    </div>
    
</div>

<div id="editModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">공고 수정</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="wage">시급</label>
                        <input type="text" class="form-control" id="wage" placeholder="시급을 입력하세요" value="9,620">
                    </div>
                    <div class="form-group">
                        <label for="field">모집분야</label>
                        <select name="" id="" class="form-control">
                        	<option value="">요식업</option>
                        	<option value="">요식업</option>
                        	<option value="">요식업</option>
                        	<option value="">요식업</option>
                        	<option value="">요식업</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="deadline">공고 마감일</label>
                        <input type="datetime-local" class="form-control" id="deadline" >
                    </div>
                    <div class="form-group">
                        <label for="work-start">근무 날짜</label>
                        <input type="date" class="form-control" id="work-start">
                    </div>
                    <div class="form-group">
					    <label for="work-time-start">근무 시간</label>
					    <div>
					        <input type="time" class="form-control" id="work-time-start"> 
					        <span> ~ </span> 
					        <input type="time" class="form-control" id="work-time-end">
					    </div>
					</div>
                    <div class="form-group">
                        <label for="details">상세 근무 내용</label>
                        <textarea class="form-control" id="details" rows="5" placeholder="상세 근무 내용을 입력하세요"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">저장</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>

    </div>
</div>



</body>
</html>