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
<title>Main2.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<style>
        /* Basic styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        #app {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ff5722;
            color: white;
            padding: 10px 20px;
        }
        header .logo {
            font-size: 24px;
            font-weight: bold;
        }
        header nav ul {
            list-style: none;
            display: flex;
            gap: 15px;
        }
        header nav ul li a {
            color: white;
            text-decoration: none;
        }
        header input {
            padding: 5px;
            font-size: 16px;
        }
        .container {
            display: flex;
            flex: 1;
        }
        aside {
            width: 250px;
            padding: 20px;
            background-color: #f4f4f4;
        }
        main {
            flex: 1;
            padding: 20px;
        }
        .job-listing {
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 10px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        footer ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        footer ul li a {
            color: white;
            text-decoration: none;
        }
</style>
</head>
<body>
     <div id="app">
        <!-- Header -->
        <header>
            <div class="logo">급구</div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">공고 목록</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
            </nav>
            <input type="text" placeholder="검색어를 입력하세요" />
        </header>

        <!-- Main Content -->
        <div class="container">
            <!-- Sidebar -->
            <aside>
                <h3>필터</h3>
                <div>
                    <label for="location">지역</label>
                    <select id="location">
                        <option value="서울">서울</option>
                        <option value="부산">부산</option>
                        <option value="대구">대구</option>
                    </select>
                </div>
                <div>
                    <label for="category">분야</label>
                    <select id="category">
                        <option value="요식업">요식업</option>
                        <option value="서비스">서비스</option>
                        <option value="운전/배달">운전/배달</option>
                    </select>
                </div>
            </aside>

            <!-- Job Listings -->
            <main>
                <h2>아르바이트 공고</h2>
                <c:forEach var="job" items="${jobs}">
                    <div class="job-listing">
                        <h3>${job.title}</h3>
                        <p>${job.description}</p>
                        <form method="post" action="apply.jsp">
                            <input type="hidden" name="jobId" value="${job.id}" />
                            <button type="submit">지원하기</button>
                        </form>
                    </div>
                </c:forEach>
            </main>
        </div>

        <!-- Footer -->
        <footer>
            <p>&copy; 2024 급구</p>
            <ul>
                <li><a href="#">이용 약관</a></li>
                <li><a href="#">개인정보 처리방침</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </footer>
    </div>
</body>
</html>
