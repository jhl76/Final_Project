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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(function()
	{
	    $("#idCheck").click(function()
	    {
	        $("#idError").css("display", "none");
	        $("#idSuccess").css("display", "none");
	
			$.post("ajax.action", { posterId: $("#posterId").val() }, function(data)
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
			});
		});
	
		$("#posterEmail2").hide();
		
		$("#domainList").change(function()
		{
			if ($("#domainList").val() === "custom") 
			{
				$("#domainList").hide();
				$("#posterEmail2").show().focus();
			} 
			else 
			{
				$("#posterEmail2").hide();
			}
		});
		
		$("#submitBtn").click(function()
		{
			$("#error").css("display", "none");
			$("#pwdError").css("display", "none");
			$("#pwdSuccess").css("display", "none");
			$("#telError").css("display", "none");;
			$("#idCheckError").css("display","none");
		
			var posterId = $("#posterId").val().trim();
			var posterPwd = $("#posterPwd").val().trim();
			var posterPwdCheck = $("#posterPwdCheck").val().trim();
			var posterName = $("#posterName").val().trim();
			var posterTel = $("#posterTel").val().trim();
			var posterEmail1 = $("#posterEmail1").val();
			var posterEmail2 = $("#posterEmail2").val();
			var domainList = $("#domainList").val();
			var gender = $("input[name=gender]:checked").val();
			var birthday = $("#birthday").val();
			
			var flag = true;
			
			// 비밀번호 재확인
			if (posterPwd != posterPwdCheck)
			{
				$("#pwdError").css("display", "inline");
				flag = false;
			}
			else if(posterPwd != "" && posterPwdCheck != "")
			{
				$("#pwdSuccess").css("display", "inline");
			}
		
			// 공백 유효성 검사
			if (posterId == "" || posterPwd == "" || posterPwdCheck == "" 
			|| posterName == "" || posterTel == "" || posterEmail1 == ""
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

<div class="container">
    <header class="text-center">
        <a href="login.action">
        	<img src="images/alba.jpg" class="img-responsive" style="width: 10%; display: inline-block; vertical-align: middle;"/>
        </a>
        <h1 style="display: inline-block; vertical-align: middle; margin-left: 10px;">CHODANGIALBA</h1>
    </header>
    
    <hr />

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">구인자 회원 가입</h3>
        </div>
        <div class="panel-body">
            <form action="postersignin.action" method="post" id="posterSignInForm">
                <div class="form-group">
			    <label for="posterId">아이디 <sup style="color: red;">※</sup></label>
			    <div class="input-group">
			        <input type="text" id="posterId" name="posterId" class="form-control" maxlength="30" required="required" placeholder="아이디 입력(영문 4~10자리)" />
			        <span class="input-group-btn">
			            <button type="button" id="idCheck" class="btn btn-primary">중복 확인</button>
			        </span>
			    </div>
			    <span id="idError" class="text-danger" style="display: none;">이미 존재하는 아이디가 있습니다.</span>
			    <span id="idSuccess" class="text-success" style="display: none;">사용 가능한 아이디 입니다.</span>
				</div>
			
				<div class="form-group">
				    <label for="posterPwd">비밀번호 <sup style="color: red;">※</sup></label>
				    <input type="password" id="posterPwd" name="posterPwd" class="form-control" maxlength="30" required="required" placeholder="비밀번호 입력(문자 숫자 특수문자 포함 영문 4~20자리)" />
				</div>
					
				<div class="form-group">
				    <label for="posterPwdCheck">비밀번호 확인 <sup style="color: red;">※</sup></label>
				    <input type="password" id="posterPwdCheck" name="posterPwdCheck" class="form-control" maxlength="30" required="required" placeholder="비밀번호 재입력" />
				    <span id="pwdError" class="text-danger" style="display: none;">비밀번호가 일치하지 않습니다.</span>
				    <span id="pwdSuccess" class="text-success" style="display: none;">비밀번호가 일치합니다.</span>
				</div>
				
				<div class="form-group">
				    <label for="posterName">이름 <sup style="color: red;">※</sup></label>
				    <input type="text" id="posterName" name="posterName" class="form-control" maxlength="30" required="required" placeholder="이름을 입력하세요" />
				</div>
				
				<div class="form-group">
				    성별 <sup style="color: red;">※</sup>
            		<div class="form-check">
				    	<input class="form-check-input" type="radio" name="gender" id="gender1" value="male" checked="checked">
					    <label class="form-check-label" for="gender1">
					    	남성
					    </label>
					</div>
					<div class="form-check">
				    	<input class="form-check-input" type="radio" name="gender" id="gender2" value="female">
					    <label class="form-check-label" for="gender2">
					    	여성
					    </label>
					</div>
				</div>
				
				
				<div class="form-group">
				    <label for="posterTel">전화번호 <sup style="color: red;">※</sup></label>
				    <input type="tel" id="posterTel" name="posterTel" class="form-control" maxlength="30" required="required" placeholder="휴대폰 번호 입력" />
				    <span id="telError" class="text-danger" style="display: none;">잘못된 전화번호 형식입니다.</span>
				</div>
				
				<div class="form-group">
				    <label for="posterEmail1">이메일 주소 <sup style="color: red;">※</sup></label>
				    <div class="input-group">
				        <input type="text" id="posterEmail1" name="posterEmail1" class="form-control" required="required" placeholder="이메일 주소" />
				        <span class="input-group-addon">@</span>
				        <input type="text" id="posterEmail2" name="posterEmail2" class="form-control" />
				        <select id="domainList" class="form-control">
				            <option value="" selected="selected">선택</option>
				            <option value="@naver.com">naver.com</option>
				            <option value="@hanmail.net">hanmail.net</option>
				            <option value="@google.com">google.com</option>
				            <option value="@nate.com">nate.com</option>
				            <option value="custom">직접 입력</option>
				        </select>
				    </div>
				</div>
				
				<div class="form-group">
					<label for="birthday">생년월일 <sup style="color: red;">※</sup></label>
					<input type="date" id="birthday" name="birthday" class="form-control" required="required" value="2000-07-06"/>
				</div>
				

                <div class="form-group text-center">
                    <button type="button" class="btn btn-success" id="submitBtn">회원 가입</button>
                    <button type="reset" class="btn btn-default">취소</button>
                    <br />
                    <span id="error" class="text-danger" style="display: none;">필수 입력 사항을 모두 입력해야 합니다.</span>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
