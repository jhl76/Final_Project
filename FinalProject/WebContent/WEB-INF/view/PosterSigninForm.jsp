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

<script type="text/javascript">

	$(function()
	{
		$("#idCheck").click(function()
		{
			$("#idError").css("display", "none");
			$("#idSuccess").css("display", "none");
			/* $.ajax({
				type : "post",
				url : "/ajax.action",
				data : {"posterId" : $("#posterId").val()},
				dataType : 'json',
				success : function(data)
				{
					if (data == "N")
					{
						$("#idSuccess").css("display", "inline");
						$("#posterId").focus();
					}
					else 
					{
						$("#idError").css("display", "inline");
						$("#posterId").val("").focus();
					}
				},
			}); */
			
			
			$.post("ajax.action", {posterId : $("#posterId").val()}, function(data)
			{
				if (data > 0)
				{
					$("#idError").css("display", "inline");
					$("#posterId").val("").focus();
				}
				else
				{
					$("#idSuccess").css("display", "inline");
					$("#posterId").focus();
				}
			})
		});
		
		
		$("#submitBtn").click(function()
		{
			$("#error").css("display", "none");
	        $("#pwdError").css("display", "none");
			
			var posterId = $("#posterId").val().trim();
	        var posterPwd = $("#posterPwd").val().trim();
	        var posterPwdCheck = $("#posterPwdCheck").val().trim();
	        var posterName = $("#posterName").val().trim();
	        var posterTel = $("#posterTel").val().trim();
	        var posterEmail = $("#posterEmail").val().trim();
	        var domainList = $("#domainList").val().trim();
	        
	        var flag = true;
	        
	        if (posterPwd != posterPwdCheck)
	        {
	            $("#pwdError").css("display", "inline");
	            flag = false;
	        }
	        else 
	        {
	        	$("#pwdSuccess").css("display", "inline");
			}
	        
	        if (posterId == "" || posterPwd == "" || posterPwdCheck == ""
	            || posterName == "" || posterTel == "" || posterEmail == ""
	            || domainList == "")
	        {
	            $("#error").css("display", "inline");
	            flag = false;
	        }
			
	        if (flag)
			{
		        $("#posterSignInForm").submit();
			}
	        
	        
		});
		
		
	});
	
	
</script>

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
			
				<form action="postersignin.action" method="post" id="posterSignInForm">
					<table class="table table-hover table-primary">
					<tr>
						<td>
							<div class="input-group" role="group">
								<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
									아이디 <sup style="color: red;">※</sup>
								</span>
								<input type="text" id="posterId" name="posterId" class="form-control"
								maxlength="30" required="required" style="width: calc(100% - 120px); display: inline-block;"
								placeholder="아이디 입력(영문 4~10자리) "/>
								<button type="button" id="idCheck" class="btn btn-primary" style="width: 100px; display: inline-block;">중복 확인</button>
								<span class="input-group-addon"></span>
							</div>
							<span id="idError" style="font-size: small; color: red; display: none;">
								이미 존재하는 아이디가 있습니다.
							</span>
							<span id="idSuccess" style="font-size: small; color: green; display: none;">
								사용 가능한 아이디 입니다.
							</span>
						</td>
					</tr>
					
					
					<tr style="height: 10px;"></tr>
					
					<tr>
						<td>
							<div class="input-group" role="group">
								<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
									비밀번호 <sup style="color: red;">※</sup>
								</span>
								<input type="password" id="posterPwd" name="posterPwd" class="form-control"
								maxlength="30" required="required" placeholder="비밀번호 입력(문자 숫자 특수문자 포함 영문 4~20자리)"/>
								<span class="input-group-addon"></span>
								
							</div>
						</td>
					</tr>
					
					
					<tr style="height: 10px;"></tr>
					
					<tr>
						<td>
							<div class="input-group" role="group">
								<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
									비밀번호 확인<sup style="color: red;">※</sup>
								</span>
								<input type="password" id="posterPwdCheck" name="posterPwdCheck" class="form-control"
								maxlength="30" required="required" placeholder="비밀번호 재입력"/>
								<span class="input-group-addon"></span>
							</div>
							<span id="pwdError" style="font-size: small; color: red; display: none;">
								비밀번호가 일치하지 않습니다.
							</span>
							<span id="pwdSuccess" style="font-size: small; color: green; display: none;">
								비밀번호가 일치합니다.
							</span>
						</td>
					</tr>
					
					
					<tr style="height: 10px;"></tr>
					
					<tr>
						<td>
							<div class="input-group" role="group">
								<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
									이름 <sup style="color: red;">※</sup>
								</span>
								<input type="text" id="posterName" name="posterName" class="form-control"
								maxlength="30" required="required" placeholder="이름을 입력하세요"/>
								<span class="input-group-addon"></span>
							</div>
						</td>
					</tr>
					
					
					<tr style="height: 10px;"></tr>
					
					<tr>
						<td>
							<div class="input-group" role="group">
								<span class="input-group-addon" id="basic-addon1" style="width: 100px;">
									전화번호 <sup style="color: red;">※</sup>
								</span>
								<input type="tel" id="posterTel" name="posterTel" class="form-control"
								maxlength="30" required="required" placeholder="휴대폰 번호 입력"/>
								<span class="input-group-addon"></span>
							</div>
						</td>
					</tr>
					
					
					<tr style="height: 10px;"></tr>
					
					<tr>
					    <td>
					        <div class="input-group" role="group">
					            <span class="input-group-addon" id="basic-addon1" style="width: 100px;">
					                이메일 주소 <sup style="color: red;">※</sup>
					            </span>
					            <input type="text" id="posterEmail" name="posterEmail" class="form-control"
					            maxlength="30" required="required" placeholder="이메일 주소" />
					            <select id="domainList" class="form-control" required="required">
					                <option value="" selected="selected">선택</option>
					                <option value="@naver.com">@naver.com</option>
					                <option value="@hanmail.net">@hanmail.net</option>
					                <option value="@google.com">@google.com</option>
					                <option value="@nate.com">@nate.com</option>
					                <option value="custom">직접 입력</option>
					            </select>
					            <span class="input-group-addon"></span>
					        </div>
					    </td>
					</tr>

					
					<tr style="height: 10px;"></tr>
					
					
					<tr>
						<td>
							<span style="font-size: small;">(※)는 필수입력 사항입니다.</span>
						</td>
					</tr>
					
					<tr>
						<td style="text-align: center;">
							<button type="button" class="btn btn-success" id="submitBtn">회원가입</button>
							<button type="reset" class="btn btn-default">취소</button>
							
							<br />
							
							
							<span id="error" style="font-size: small; color: red; display: none;">
								필수 입력 사항을 모두 입력해야 합니다.
							</span>
						</td>
					</tr>
						
					</table>	
				</form>	
		
			</div>
		
		</div>

	</div>
</div>





</body>
</html>