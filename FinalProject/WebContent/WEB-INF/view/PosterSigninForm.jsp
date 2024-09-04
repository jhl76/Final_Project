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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PosterSigninForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="panel title">
	<img src="images/alba.jpg" style="width: 5%; display: inline-block; vertical-align: middle;"/>
	<h1 style="display: inline-block; vertical-align: middle; margin-left: 10px;">CHODANGIALBA</h1>
</div>


<nav class="navbar navbar-default">
	
	<div class="container-fluid">
	
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="#">
						회원 가입 <span class="sr-only">(current)</span>
					</a>
				</li>
				<li>
					<a href="#">
						로그인
					</a>
				</li>	
			</ul>
		
		</div>
	
	</div>
	
</nav>

<div class="container">

	<div class="panel-group">
	
		<div class="panel panel-primary">
		
			<div class="panel-heading" style="height: 60px;">
				<span style="font-size: 17pt; font-weight: bold; color: white;"  class="col-md-3">
					구인자 회원 가입 
				</span>
			</div>
			
			<!--
			- 필수 입력사항: 아이디, 비밀번호, 대표자 이름,  회사명, 회사(실제 근무) 지역, 대표자 전화번호, 대표자 이메일
			- 선택 입력사항: 사업자 등록번호(개인 사용자 고려), 희망분야
			- 닉네임은 회사명 + 숫자(중복 + 1)로 자동등록한다. 
			-->
			
			<div class="panel-body">
			
				<form action="postersignin.action" method="post" id="posterSingInForm">
					<table class="table table-hover table-primary">
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										아이디 <sup style="color: red;">※</sup>
									</span>
									<input type="text" id="posterId" name="posterId" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										패스워드 <sup style="color: red;">※</sup>
									</span>
									<input type="password" id="posterPwd" name="posterPwd" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										대표자 이름 <sup style="color: red;">※</sup>
									</span>
									<input type="text" id="posterName" name="posterName" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										회사명 <sup style="color: red;">※</sup>
									</span>
									<input type="text" id="companyName" name="companyName" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										회사(실제 근무) 지역 <sup style="color: red;">※</sup>
									</span>
									<input type="text" id="companylocation" name="companylocation" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										대표자 전화번호 <sup style="color: red;">※</sup>
									</span>
									<input type="tel" id="posterTel" name="posterTel" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										대표자 이메일 <sup style="color: red;">※</sup>
									</span>
									<input type="text" id="posterEmail" name="posterEmail" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										사업자 등록번호
									</span>
									<input type="text" id="businessId" name="businessId" class="form-control"
									maxlength="30" required="required"/>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						<tr>
							<td>
								<div class="input-group" role="group">
									<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
										희망분야
									</span>
									<select name="posterCategory" id="posterCategory" class="form-control">
										<option value="">제조업</option>
										<option value="">배달</option>
									</select>
									<span class="input-group-addon"></span>
								</div>
							</td>
						</tr>
						
						
						<tr style="height: 10px;"></tr>
						
						
						
					</table>	
				</form>	
		
			</div>
		
		</div>

	</div>
</div>





</body>
</html>