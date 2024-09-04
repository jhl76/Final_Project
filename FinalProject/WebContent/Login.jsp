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
<title>Login</title>
<style type="text/css">
       @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

       * {
           box-sizing: border-box;
       }

       body {
           background: #f6f5f7;
           display: flex;
           justify-content: center;
           align-items: center;
           flex-direction: column;
           font-family: 'Montserrat', sans-serif;
           height: 100vh;
           margin: 0;
       }

       h1 {
           font-weight: bold;
           margin: 0;
       }

       h2 {
           text-align: center;
       }

       p {
           font-size: 14px;
           font-weight: 100;
           line-height: 20px;
           letter-spacing: 0.5px;
           margin: 20px 0 30px;
       }

       span {
           font-size: 12px;
       }

       a {
           color: #333;
           font-size: 14px;
           text-decoration: none;
           margin: 15px 0;
       }

       button {
           border-radius: 20px;
           border: 1px solid #FF4B2B;
           background-color: #FF4B2B;
           color: #FFFFFF;
           font-size: 12px;
           font-weight: bold;
           padding: 12px 45px;
           letter-spacing: 1px;
           text-transform: uppercase;
           transition: transform 80ms ease-in;
           cursor: pointer;
       }

       button:active {
           transform: scale(0.95);
       }

       button:focus {
           outline: none;
       }

       button.ghost {
           background-color: transparent;
           border-color: #FFFFFF;
       }

       form {
           background-color: #FFFFFF;
           display: flex;
           align-items: center;
           justify-content: center;
           flex-direction: column;
           padding: 0 50px;
           height: 100%;
           text-align: center;
       }

       input {
           background-color: #eee;
           border: none;
           padding: 12px 15px;
           margin: 8px 0;
           width: 100%;
       }

       .container {
           background-color: #fff;
           border-radius: 10px;
           box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
                       0 10px 10px rgba(0,0,0,0.22);
           position: relative;
           overflow: hidden;
           width: 768px;
           max-width: 100%;
           min-height: 480px;
       }

       .form-container {
           position: absolute;
           top: 0;
           height: 100%;
           transition: all 0.6s ease-in-out;
       }

       .sign-in-container {
           left: 0;
           width: 50%;
           z-index: 2;
       }

       .container.right-panel-active .sign-in-container {
           transform: translateX(100%);
       }

       .sign-up-container {
           left: 0;
           width: 50%;
           opacity: 0;
           z-index: 1;
       }

       .container.right-panel-active .sign-up-container {
           transform: translateX(100%);
           opacity: 1;
           z-index: 5;
           animation: show 0.6s;
       }

       @keyframes show {
           0%, 49.99% {
               opacity: 0;
               z-index: 1;
           }

           50%, 100% {
               opacity: 1;
               z-index: 5;
           }
       }

       .overlay-container {
           position: absolute;
           top: 0;
           left: 50%;
           width: 50%;
           height: 100%;
           overflow: hidden;
           transition: transform 0.6s ease-in-out;
           z-index: 100;
       }

       .container.right-panel-active .overlay-container {
           transform: translateX(-100%);
       }

       .overlay {
           background: #FF416C;
           background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
           background: linear-gradient(to right, #FF4B2B, #FF416C);
           background-repeat: no-repeat;
           background-size: cover;
           background-position: 0 0;
           color: #FFFFFF;
           position: relative;
           left: -100%;
           height: 100%;
           width: 200%;
           transform: translateX(0);
           transition: transform 0.6s ease-in-out;
       }

       .container.right-panel-active .overlay {
           transform: translateX(50%);
       }

       .overlay-panel {
           position: absolute;
           display: flex;
           align-items: center;
           justify-content: center;
           flex-direction: column;
           padding: 0 40px;
           text-align: center;
           top: 0;
           height: 100%;
           width: 50%;
           transform: translateX(0);
           transition: transform 0.6s ease-in-out;
       }

       .overlay-left {
           transform: translateX(-20%);
       }

       .container.right-panel-active .overlay-left {
           transform: translateX(0);
       }

       .overlay-right {
           right: 0;
           transform: translateX(0);
       }

       .container.right-panel-active .overlay-right {
           transform: translateX(20%);
       }

       .social-container {
           margin: 20px 0;
       }

       .social-container a {
           border: 1px solid #DDDDDD;
           border-radius: 50%;
           display: inline-flex;
           justify-content: center;
           align-items: center;
           margin: 0 5px;
           height: 40px;
           width: 40px;
           text-align: center;
           line-height: 40px;
           color: #333;
           font-size: 16px;
       }

       footer {
           background-color: #222;
           color: #fff;
           font-size: 14px;
           bottom: 0;
           position: fixed;
           left: 0;
           right: 0;
           text-align: center;
           z-index: 999;
           padding: 10px 0;
       }

       footer p {
           margin: 10px 0;
       }

       footer i {
           color: red;
       }

       footer a {
           color: #3c97bf;
           text-decoration: none;
       }
</style>
</head>
<body>

<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="<%=cp%>/signup" method="post">
            <h1>회원가입</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>이메일로 가입하기</span>
            <input type="text" name="name" placeholder="이름" required />
            <input type="email" name="email" placeholder="이메일" required />
            <input type="password" name="password" placeholder="비밀번호" required />
            <button type="submit">가입하기</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="<%=cp%>/login" method="post">
            <h1>로그인</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>계정으로 로그인하기</span>
            <input type="email" name="email" placeholder="이메일" required />
            <input type="password" name="password" placeholder="비밀번호" required />
            <a href="#">비밀번호를 잊으셨나요?</a>
            <button type="submit">로그인</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>다시 오신 것을 환영합니다!</h1>
                <p>계속 연결하려면 개인 정보를 사용하여 로그인하세요</p>
                <button class="ghost" id="signIn">로그인하기</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>안녕하세요!</h1>
                <p>개인 정보를 입력하고 회원가입을 시작하세요</p>
                <button class="ghost" id="signUp">회원가입하기</button>
            </div>
        </div>
    </div>
</div>
</body>
