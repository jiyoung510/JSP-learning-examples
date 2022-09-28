<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>국립중앙박물관</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
	<div class="wrap">
		<!-- header -->
		<div id="header">
			<div class="area">
				<h1 class="logo"><a href="index.html"><img src="./img/header_logo.png" alt="국립중앙박물관로고"></a></h1>
                <div class="gnb">
                    <ul>
                        <li class="drop"><a href="#">관람 정보</a>
                            <ul class="sub">
                                <li><a href="#">sub01</a></li>
                                <li><a href="#">sub02</a></li>
                                <li><a href="#">sub03</a></li>
                            </ul>
                        </li>
                        <li class="drop"><a href="#">전시</a>
                            <ul class="sub">
                                <li><a href="#">sub01</a></li>
                                <li><a href="#">sub02</a></li>
                                <li><a href="#">sub03</a></li>
                            </ul>
                        </li>
                        <li class="drop"><a href="#">교육</a>
                            <ul class="sub">
                                <li><a href="#">sub01</a></li>
                                <li><a href="#">sub02</a></li>
                                <li><a href="#">sub03</a></li>
                            </ul>
                        </li>
                        <li class="drop"><a href="#">학술</a>
                            <ul class="sub">
                                <li><a href="#">sub01</a></li>
                                <li><a href="#">sub02</a></li>
                                <li><a href="#">sub03</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <ul class="util">
                    <li><a href="LoginForm.jsp">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                    <li class="search"><a href="#"><img src="./img/search.png" alt="검색"></a></li>
                </ul>
			</div>
		</div>
        <!-- //header -->
        
	<!-- section --------------------------------------------- -->
    <section id="section2">
        <div class="container">
            <div class="loginBox">
                <div>
                    <div class="box">
                        <div class="logo">
                            <h1>로그인</h1>
                        </div>
                        <form action="IdSaveProcess.jsp" method="post">
                            <input class="id_jsp" type="text" name="user_id" placeholder="아이디" />
                            <input class="idck_jsp" type="checkbox" name="save_check"/>
							아이디 저장하기
                            <input class="pw_jsp" type="text" name="user_pw" placeholder="비밀번호"/>
                            <button type="submit">로그인</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clear"></div>
    <!-- //section -->
    
			<!-- footer -->
			<div class="footer">
				<p class="btmLogo">
					<img src="./img/header_logo.png" alt="bottom logo">
				</p>
				<ul class="btmNav">
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">전자민원</a></li>
                    <li><a href="#">공공데이터개방</a></li>
                    <li><a href="#">저작권정책</a></li>
				</ul>
				<p class="copy">Copyright &copy; <strong>National Museum of Korea</strong>. All rights reserved.</p>
			</div>
	</div>
</body>
</html>