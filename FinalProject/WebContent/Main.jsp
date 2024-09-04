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
<title>Main.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<style type="text/css">
	body {
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	    margin: 0;
	    padding: 0;
	    background-color: #f8f9fa;
	    color: #212529;
	}
	
	/* 헤더 스타일 */
	header {
	    background-color: #ffe4e1; /* 연한 분홍색 */
	    color: #333333; /* 짙은 회색 */
	    padding: 20px;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    border-bottom: 1px solid #ffb6c1; /* 더 연한 분홍색 */
	}
	
	header h1 {
	    margin: 0;
	    font-size: 28px;
	}
	
	header p {
	    margin: 5px 0 0;
	    font-size: 16px;
	}
	
	header form {
	    flex-grow: 1;
	    margin-left: 20px;
	    display: flex;
	}
	
	header input[type="text"] {
	    width: 100%;
	    padding: 10px 15px;
	    border: 1px solid #ffb6c1; /* 연한 분홍색 경계선 */
	    border-radius: 4px 0 0 4px;
	    font-size: 16px;
	}
	
	header button {
	    padding: 10px 20px;
	    background-color: #ff69b4; /* 핫 핑크 */
	    color: #ffffff; /* 흰색 */
	    border: none;
	    border-radius: 0 4px 4px 0;
	    cursor: pointer;
	    font-size: 16px;
	    transition: background-color 0.3s;
	}
	
	header button:hover {
	    background-color: #ff1493; /* 딥 핫 핑크 */
	}
	
	header a {
	    color: #ff69b4; /* 핫 핑크 */
	    text-decoration: none;
	    margin-left: 20px;
	    font-size: 16px;
	    transition: color 0.3s;
	}
	
	header a:hover {
	    color: #ff1493; /* 딥 핫 핑크 */
	}
	
	/* 내비게이션 스타일 */
	nav {
	    background-color: #fff0f5; /* 라벤더 블러쉬 */
	    border-bottom: 1px solid #ffb6c1; /* 연한 분홍색 */
	}
	
	nav ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	    display: flex;
	    justify-content: center;
	}
	
	nav ul li {
	    position: relative;
	    margin: 0 20px;
	}
	
	nav ul li a {
	    color: #ff69b4; /* 핫 핑크 */
	    text-decoration: none;
	    padding: 10px 15px;
	    font-size: 16px;
	    border-radius: 4px;
	    display: block;
	    transition: background-color 0.3s;
	}
	
	nav ul li a:hover {
	    background-color: #f1f1f1; /* 연한 회색 */
	}
	
	/* 드롭다운 메뉴 스타일 */
	nav ul li ul {
	    display: none;
	    position: absolute;
	    top: 100%;
	    left: 0;
	    background-color: #fff0f5; /* 라벤더 블러쉬 */
	    padding: 0;
	    margin: 0;
	    list-style: none;
	    border: 1px solid #ffb6c1; /* 연한 분홍색 */
	    border-radius: 4px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    min-width: 160px;
	    z-index: 1000;
	}
	
	nav ul li:hover ul {
	    display: block;
	}
	
	nav ul li ul li {
	    margin: 0;
	}
	
	nav ul li ul li a {
	    padding: 10px 15px;
	    color: #FFFFFF; /* 핫 핑크 */
	    white-space: nowrap;
	}
	
	nav ul li ul li a:hover {
	    background-color: #f1f1f1; /* 연한 회색 */
	}
	
	/* 메인 콘텐츠 스타일 */
	main {
	    padding: 40px 20px;
	    max-width: 1200px;
	    margin: auto;
	}
	
	main section {
	    margin-bottom: 30px;
	    padding: 20px;
	    background-color: #ffffff; /* 흰색 */
	    border-radius: 6px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}
	
	main h2 {
	    margin-top: 0;
	    font-size: 24px;
	    color: #ff69b4; /* 핫 핑크 */
	}
	
	/* 푸터 스타일 */
	footer {
	    background-color: #ffe4e1; /* 연한 분홍색 */
	    color: #333333; /* 짙은 회색 */
	    text-align: center;
	    padding: 30px 20px;
	    border-top: 1px solid #ffb6c1; /* 더 연한 분홍색 */
	    margin-top: 40px;
	}
	
	footer a {
	    color: #ff69b4; /* 핫 핑크 */
	    text-decoration: none;
	    font-size: 14px;
	    transition: color 0.3s;
	}
	
	footer a:hover {
	    color: #ff1493; /* 딥 핫 핑크 */
	    text-decoration: underline;
	}
	
	footer div {
	    margin-bottom: 10px;
	}
	
	footer p {
	    color: #333333; /* 짙은 회색 */
	}
</style>
</head>
<body>
    <!-- 헤더 영역 -->
    <header>
        <div>
            <h1>초단기동타격대</h1>
            <p>누구나 쉽고 빠르게 일을 시작해보세요!</p>
        </div>
        <!-- 검색 바 -->
        <div>
            <form action="#" method="get">
                <input type="text" name="search" placeholder="검색어를 입력하세요">
                <button type="submit">검색</button>
            </form>
        </div>
        <!-- 로그인 및 회원가입 -->
        <div>
            <a href="<%=cp%>/Login.jsp">로그인</a>
            
            <a href="#">회원가입</a>
        </div>
    </header>
    
    <!-- 내비게이션 메뉴 -->
    <nav>
        <ul>
            <li><a href="#">홈</a></li>
            <li><a href="#">채용공고</a></li>
            <li><a href="#">기업정보</a>
                <ul>
                    <li><a href="#">회사 소개</a></li>
                    <li><a href="#">인재 채용</a></li>
                </ul>
            </li>
            <li><a href="#">알바가이드</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </nav>
    
    <!-- 주요 콘텐츠 영역 -->
    <main>
        <!-- 배너 이미지 또는 주요 광고 -->
        <section>
            <h2>배너 또는 주요 광고</h2>
            <p>여기에 주요 광고나 프로모션 배너가 들어갑니다.</p>
        </section>
        
        <!-- 채용공고 섹션 -->
        <section>
            <h2>채용공고</h2>
            <p>여기에 채용공고 목록이 표시됩니다.</p>
        </section>
        
        <!-- 인기 공고 및 추천 섹션 -->
        <section>
            <h2>인기 공고</h2>
            <p>여기에 인기 있는 채용공고가 표시됩니다.</p>
        </section>
        
        <!-- 기업 정보 섹션 -->
        <section>
            <h2>기업 정보</h2>
            <p>여기에 주요 기업 정보가 표시됩니다.</p>
        </section>
    </main>
    
    <!-- 푸터 영역 -->
    <footer>
        <div>
            <p>&copy; 2024 초단기동타격대. All rights reserved.</p>
            <p><a href="#">이용약관</a>  <a href="#">개인정보처리방침</a></p>
        </div>
        <div>
            <p>고객센터: 1234-5678</p>
            <p>이메일: info@website.com</p>
        </div>
    </footer>
</body>
</html>
