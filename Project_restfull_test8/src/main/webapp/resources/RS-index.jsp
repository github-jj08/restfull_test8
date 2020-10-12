<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RestFuLL | 메인페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-right">
                <button type="button" class="login-panel">
                 <a href="${pageContext.request.contextPath}/login">로그인</a>  
                 </button>
                </div>
            </div>
         </div>
 
        <div class="container">
                <div class="inner-header">
                    <div class="row">
                        <div class="col-lg-2 col-md-2">
                            <div class="logo">
                                <a href="./index.html">
                                    <img src="resources/img/LOGOsmall.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-7 search-top">
                            <div class="advanced-search">
                                <div class="input-group">
                                	<form action="${pageContext.request.contextPath}/search" method="GET">
                                		<!-- 메인 게시글 검색. 메인 게시글 게시판 번호 = 1 -->
                                		<input type="hidden" name="boardlist_numbers" value="<c:out value='1'/>">
	                                    <input type="text"  name="searchWord" placeholder="어느 지역으로 여행을 가시나요?">
	                                    <button id="search" type="submit"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/write_view">글작성</a></li>
                        <li><a href="#">여행코스작성</a></li>
                        <li><a href="./ServiceCenter.html">공지사항</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="./ServiceCenter-faq.html">자주하는질문</a></li>
                        <!--<li><a href="#">로그인</a></li>-->
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="resources/img/KR_15.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <h1>휴식 가득한 여행</h1>
                            <p></p>
                            <!--<a href="#" class="primary-btn"></a>-->
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-hero-items set-bg" data-setbg="resources/img/KR_1.jpg">
            </div>

            <div class="single-hero-items set-bg" data-setbg="resources/img/KR_3.jpg">
            </div>

            <div class="single-hero-items set-bg" data-setbg="resources/img/KR_4.jpg">
            </div>

            <div class="single-hero-items set-bg" data-setbg="resources/img/KR_8.jpg">
            </div>

        </div>
    </section>
    <!-- Hero Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer-section" >
        <div class="container">
            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="resources/img/LOGOsmall.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">운영정책</a></li>
                            <li><a href="#">여행지등록</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#"><b>개인정보처리방침</b></a></li>
                            <li><a href="#">청소년보호방침</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>새로운 소식 받기</h5>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>
                                document.write(new Date().getFullYear());
                            </script> 2020 RestFuLL. All rights reserved.
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="resources/img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.countdown.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery.zoom.min.js"></script>
    <script src="resources/js/jquery.dd.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
</body>
</html>