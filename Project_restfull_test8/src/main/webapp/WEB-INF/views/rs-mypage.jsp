<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RestFuLL | 마이페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
 
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <!-- 자동완성 cdn -->
     <link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 


    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!-- 로고 넣었는데 안변하네 몰랑~ -->
	<link rel="shortcut icon" href="img/favicon.ico"/>
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
                 <a href="./rs-loginpage.jsp">로그인</a>  
                 </button>
                </div>
            </div>
         </div>
         
 		<!-- 자동완성 자바스크립트 -->
        <script>
        $(function() {
        	
	        var searchSource = [
				"부산","부천","부경",
				"서울","서산","광주","전주","여수","여주","대전",
				"제주도","거제도","인천","양양","강릉"
	        ];
	        
	        $("#searchbox").autocomplete({
	        	source: searchSource,
	        	select : function(event, ui) {
	        		console.log(ui.item);
	        	},
	        	focus :function(event, ui) {
	        		return false;
	        	},
	        	minLength:1,
	        	autoFocus : true,
	        	classes : {
	        		"ui-autocomplete" : "highlight"
	        	},
	        	delay : 500,
	        	close : function(event) {
	        		console.log(event);
	        	}
	        	
	        });
  
   		 });
        </script>
         
        <div class="container">
                <div class="inner-header">
                    <div class="row">
                        <div class="col-lg-2 col-md-2">
                            <div class="logo">
                                <a href="./rs-mainpage.jsp">
                                    <img src="img/LOGOsmall.png" alt="">
                                </a>
                            </div>
                        </div>
                         <div class="col-lg-6 col-md-6 offset-lg-1 search-top">
                           <form name="searchform" method="post" action="#">
                                <div class="advanced-search">
                                    <div class="input-group">
                                        <input type="text" id="searchbox" placeholder="어느 지역으로 여행을 가시나요?">
                                        <button type="submit" id="submit" value="검색"><i class="ti-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
  
        <div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./rs-mainpage.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/write_view">글작성</a></li>
                        <li><a href="#">여행코스작성</a></li>
                        <li><a href="./rs-Servicecenter.jsp">공지사항</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="./rs-Servicecenter_faq.jsp">자주하는질문</a></li>
                        <!--<li><a href="#">로그인</a></li>-->
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->


    <!-- Blog Section Begin -->
    <section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
                    <div class="blog-sidebar">
<!--                        <div class="search-form">
                            <h4>Search</h4>
                            <form action="#">
                                <input type="text" placeholder="Search . . .  ">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>-->
                        <div class="blog-catagory">
                            <h4>마이페이지</h4>
                            <ul>
                                <li><a href="#">내 정보</a></li>
                                <li><a href="#">내 글 관리</a></li>
                                <li><a href="#">내 여행코스</a></li>
                                <li><a href="#">결제내역</a></li>
                                <li><a href="#">저장목록</a></li>
                                <li><a href="#">1:1문의</a></li>
                                <li><a href="#">신고내역</a></li>
                            </ul>
                        </div>
                        <div class="recent-post">
                            <h4>최근에 본 게시글</h4>
                            <div class="recent-blog">
                                <a href="#" class="rb-item">
                                    <div class="rb-pic">
                                        <img src="img/blog/recent-1.jpg" alt="">
                                    </div>
                                    <div class="rb-text">
                                        <h6>부산...최고..</h6>
                                        <p>Fashion <span>- May 19, 2019</span></p>
                                    </div>
                                </a>
                                <a href="#" class="rb-item">
                                    <div class="rb-pic">
                                        <img src="img/blog/recent-2.jpg" alt="">
                                    </div>
                                    <div class="rb-text">
                                        <h6>제주도 좋아</h6>
                                        <p>Fashion <span>- May 19, 2019</span></p>
                                    </div>
                                </a>
                                <a href="#" class="rb-item">
                                    <div class="rb-pic">
                                        <img src="img/blog/recent-3.jpg" alt="">
                                    </div>
                                    <div class="rb-text">
                                        <h6>인천 차이나타운 감</h6>
                                        <p>Fashion <span>- May 19, 2019</span></p>
                                    </div>
                                </a>
                                <a href="#" class="rb-item">
                                    <div class="rb-pic">
                                        <img src="img/blog/recent-4.jpg" alt="">
                                    </div>
                                    <div class="rb-text">
                                        <h6>가을엔 산이죠~</h6>
                                        <p>Fashion <span>- May 19, 2019</span></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="blog-tags">
                            <h4>추천 지역</h4>
                            <div class="tag-item">
                                <a href="#">하동</a>
                                <a href="#">대전</a>
                                <a href="#">제주도</a>
                                <a href="#">부산</a>
                                <a href="#">거제도</a>
                                <a href="#">울릉도</a>
                                <a href="#">양양</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ajax로 받아야하는 부분-마이페이지 start-->
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-1.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>The Personality Trait That Makes People Happier</h4>
                                    </a>
                                    <p>travel <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-2.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>This was one of our first days in Hawaii last week.</h4>
                                    </a>
                                    <p>Fashion <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-3.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>Last week I had my first work trip of the year to Sonoma Valley</h4>
                                    </a>
                                    <p>travel <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-4.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>Happppppy New Year! I know I am a little late on this post</h4>
                                    </a>
                                    <p>Fashion <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-5.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>Absolue collection. The Lancome team has been one…</h4>
                                    </a>
                                    <p>Model <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="img/blog/blog-6.jpg" alt="">
                                </div>
                                <div class="bi-text">
                                    <a href="./blog-details.html">
                                        <h4>Writing has always been kind of therapeutic for me</h4>
                                    </a>
                                    <p>Fashion <span>- May 19, 2019</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="loading-more">
                                <i class="icon_loading"></i>
                                <a href="#">
                                    Loading More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <!--ajax로 받아야하는 부분-마이페이지 start-->



    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/LOGOsmall.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                          	<li><a href="./rs-comapnyinfo.jsp">회사소개</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">여행지등록</a></li>
                            <li><a href="./rs-Servicecenter.jsp">고객센터</a></li>
                            <li><a href="#">사이트맵</a></li>
                            <li><a href="./rs-Servicecenter_personal.jsp"><b>개인정보처리방침</b></a></li>
                            <li><a href="#">위치기반서비스이용약관</a></li>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 2020 RestFuLL. All rights reserved.
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->


    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>