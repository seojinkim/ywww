<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About Us | YW3</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

     <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                       <!-- 로그인한 고객일 경우 고객 정보 뜨는 곳 -->
<!--                         <div class="top-number"><p><i class="fa fa-user"></i> 로그인</p>
                        </div> -->
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share jooafont">
                               <!-- Sign up, Log in 버튼 위치하는 곳 -->
								<!-- <div class="top-number"> -->
									<!-- <li><i class="fa"></i> <a href="C.do">My Wish</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
								<c:choose>
									<c:when test="${not empty sessionScope.userLoginInfo}">
										<li>
											<i class="fa fa-user"></i> 
											<font style="font: bold; font-size: large; color: white; ">${sessionScope.userLoginInfo.name}</font>
											<font style="color: white;">님 반갑습니다.</font> 
											<a href="C.do">My Wish</a>
										</li>
										<li>
											<a href="logoutProcess.do">Logout</a>
										</li>
									</c:when>
									<c:otherwise>
										<li><a href="B.do">Login</a></li>
									</c:otherwise>
								</c:choose>
								
								<!-- </div> -->
								<!-- <li><a href="#"><i class="fa fa-facebook"></i></a></li> -->
                                
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- YW3 홈페이 로고 -->
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo3.png" alt="logo"></a>
                </div>
            
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                       <!-- Home, About us, 여행 Tip, 여행 소개, Contact -->
                        <li><a class="jooafont" href="index.jsp">Home</a></li>
                        <li class="active"><a class="jooafont" href="about-us.jsp">About Us</a></li>
                        <li><a class="jooafont" href="portfolio.jsp">인포그래픽</a></li>
                        <li><a class="jooafont" href="selectFestival.do">여행 소개</a></li> 
                        <li><a class="jooafont" href="contact-us.jsp">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="about-us">
        <div class="container">
         <div class="center wow fadeInDown">
            <h2>About YW3</h2>
            <h3>You say When, We say Where</h3>
         </div>
         
         <!-- about us slider -->
         <div id="about-slider">
            <div id="carousel-slider" class="carousel slide" data-ride="carousel">
               <!-- Indicators -->
                 <ol class="carousel-indicators visible-xs">
                   <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                   <li data-target="#carousel-slider" data-slide-to="1"></li>
                   <li data-target="#carousel-slider" data-slide-to="2"></li>
                 </ol>

               <div class="carousel-inner">
                  <!-- <div class="item active">
                     <div data-wow-duration="1000ms" data-wow-delay="600ms">
                     <a href="#introduce">
                        <img src="images/aaaa1.png" class="img-responsive" alt="">
                     </a>
                     </div>
                  </div> -->
                  <div class="item active">
                     <a href="#reason">
                        <img src="images/1111_1.jpg" class="img-responsive" alt="">
                     </a>
                  </div>
                  <!-- <div class="item">
                     <img src="images/slider_3.jpg" class="img-responsive" alt="">
                  </div>
                  <div class="item">
                     <img src="images/slider_4.jpg" class="img-responsive" alt="">
                  </div> -->
               </div>
               
               <!-- <a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
                  <i class="fa fa-angle-left"></i> 
               </a>
               
               <a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
                  <i class="fa fa-angle-right"></i> 
               </a> -->
            </div> <!--/#carousel-slider-->
         </div><!--/#about-slider-->
         
         
         <!-- Our Skill -->
         <!-- <div class="skill-wrap clearfix" id="reason">
         
            <div class="center wow fadeInDown">
               <br><br><br>
               <h2 class="jooafont">당신이 YW3를 써야하는 이유</h2>
               <p class="jooafont" class="lead">[우리가 YW3를 만든 이유]<br>여행은 떠나고 싶은데...어디로 갈지 모르겠다면?</p>
            </div>
            
            <div class="row">
      
               <div class="col-sm-3">
                  <div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                     <div class="joomla-skill">                                   
                        <p class="jooafont"><em>85%</em></p>
                        <p class="jooafont">해외 여행 떠나자!</p>
                     </div>
                  </div>
               </div>
               
                <div class="col-sm-3">
                  <div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                     <div class="html-skill">                                  
                        <p class="jooafont"><em>95%</em></p>
                        <p class="jooafont">원하는 날짜로 찾고싶어?</p>
                     </div>
                  </div>
               </div>
               
               <div class="col-sm-3">
                  <div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
                     <div class="css-skill">                                    
                        <p class="jooafont"><em>80%</em></p>
                        <p class="jooafont">무슨 축제가 있지?</p>
                     </div>
                  </div>
               </div>
               
                <div class="col-sm-3">
                  <div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
                     <div class="wp-skill">
                        <p class="jooafont"><em>90%</em></p>
                        <p class="jooafont">축제 후기가 궁금해?</p>                                     
                     </div>
                  </div>
               </div>
               
   
            </div> --><!--/.our-skill-->
         
		<br><br><br><br><hr>
         <!-- our-team -->
         <div class="team">
            <div class="center wow fadeInDown" id="introduce">
               <h2 class="jooafont">개발자 소개</h2>
               <!-- <p class="lead">팀장 주도 아래 우리는 하나가 됨 <br> 이것이 바로 팀 워크..랄까?</p> -->
            </div>

            <div class="row clearfix">
               <div class="col-md-4 col-sm-6">   
                  <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                     <div class="media">
                        <div class="pull-left">
                           <img class="media-object" src="images/ksj.jpg" alt="">
                        </div>
                        <div class="media-body">
                           <h4 class="jooafont">김서진</h4>
                           <h5 class="jooafont">Project Manager</h5>
                           <!-- 각자 자신있는 기술 적기 -->
                           <ul class="tag clearfix">
                              <li class="btn"><font color="red">Java/Android</font></li>
                              <li class="btn"><font color="red">C/C++/C#</font></li>
                              <li class="btn"><font color="red">JSP/PHP</font></li>
                              <li class="btn"><font color="red">SQL/PLSQL</font></li>
                              <li class="btn"><font color="red">JavaScript</font></li>
                           </ul>
                           <!-- 내 소셜 주소 적기 -->
                           <ul class="social_icons">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li> 
                              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           </ul>
                        </div>
                     </div><!--/.media -->
                     <p class="jooafont">생년월일 : 1989년 09월 22일<br class="jooafont">학력 : 인하대학교 컴퓨터공학과<br class="jooafont">이메일 : seojineer@naver.com<br class="jooafont">연락처 : 010-7105-9326<br class="jooafont">취미 : 피아노치기<br class="jooafont">특기 : 독서</p>
                  </div>
               </div><!--/.col-lg-4 -->
               
               
               <div class="col-md-4 col-sm-6 col-md-offset-2">   
                  <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                     <div class="media">
                        <div class="pull-left">
                           <img class="media-object" src="images/jooa.jpg" alt="">
                        </div>
                        <div class="media-body">
                           <h4 class="jooafont">신주아</h4>
                           <h5 class="jooafont">피티의 신</h5>
                           <ul class="tag clearfix">
                              <li class="btn"><font color="red">Java/Android</font></li>
                              <li class="btn"><font color="red">JSP/PHP</font></li>
                              <li class="btn"><font color="red">HTML5/CSS</font></li>
                              <li class="btn"><font color="red">Web</font></li>
                              <li class="btn"><font color="red">Ui</font></li>
                              <li class="btn"><font color="red">Ux</font></li>
                              <li class="btn"><font color="red">Photoshop</font></li>
                           </ul>
                           <ul class="social_icons">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li> 
                              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           </ul>
                        </div>
                     </div><!--/.media -->
                     <p class="jooafont">생년월일 : 1990년 04월 13일<br class="jooafont">학력 : 동국대학교 정보통신공학과<br class="jooafont">이메일 : shinjooa90@naver.com<br class="jooafont">연락처 : 010-4864-1777<br class="jooafont">취미 : 피아노치기<br class="jooafont">특기 : 독서</p>
                  </div>
               </div><!--/.col-lg-4 -->               
            </div> <!--/.row -->
            <div class="row team-bar">
               <div class="first-one-arrow hidden-xs">
                  <hr>
               </div>
               <div class="first-arrow hidden-xs">
                  <hr> <i class="fa fa-angle-up"></i>
               </div>
               <div class="second-arrow hidden-xs">
                  <hr> <i class="fa fa-angle-down"></i>
               </div>
               <div class="third-arrow hidden-xs">
                  <hr> <i class="fa fa-angle-up"></i>
               </div>
               <div class="fourth-arrow hidden-xs">
                  <hr> <i class="fa fa-angle-down"></i>
               </div>
            </div> <!--skill_border-->       

            <div class="row clearfix">   
               <div class="col-md-4 col-sm-6 col-md-offset-2">   
                  <div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                     <div class="media">
                        <div class="pull-left">
                           <img class="media-object" src="images/hw1.png" alt="">
                        </div>

                        <div class="media-body">
                           <h4 class="jooafont">김현우</h4>
                           <h5 class="jooafont">뒤에서 웃기</h5>
                           <ul class="tag clearfix">
                              <li class="btn"><font color="red">HTML5/CSS</font></li>
                              <li class="btn"><font color="red">Web</font></li>
                              <li class="btn"><font color="red">Java/Android</font></li>
                              <li class="btn"><font color="red">Ux</font></li>
                              <li class="btn"><font color="red">DBMS</font></li>
                              <li class="btn"><font color="red">SQL/PLSQL</font></li>
                              <li class="btn"><font color="red">Ui</font></li>
                              
                           </ul>
                           <ul class="social_icons">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li> 
                              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           </ul>
                        </div>
                     </div><!--/.media -->
                     <p class="jooafont">생년월일 : 1990년 09월 22일<br class="jooafont">학력 : 국민대학교 경영정보학과<br class="jooafont">이메일 : kmjjbin@daum.net<br class="jooafont">연락처 : 010-7105-9326<br class="jooafont">취미 : 일기쓰기<br class="jooafont">특기 : 독서</p>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-md-offset-2">
                  <div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                     <div class="media">
                        <div class="pull-left">
                           <img class="media-object" src="images/jb2.png" alt="">
                        </div>
                        <div class="media-body">
                           <h4 class="jooafont">박정빈</h4>
                           <h5 class="jooafont">Bean</h5>
                           <ul class="tag clearfix">
                              <li class="btn"><font color="red">Java/Android</font></li>
                              <li class="btn"><font color="red">C/C++/C#</font></li>
                              <li class="btn"><font color="red">JavaScript</font></li>
                              <li class="btn"><font color="red">HTML5/CSS</font></li>
                              <li class="btn"><font color="red">Web</font></li>
                              <li class="btn"><font color="red">Ui</font></li>
                           </ul>
                           <ul class="social_icons">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li> 
                              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           </ul>
                        </div>
                     </div><!--/.media -->
                     <p class="jooafont">생년월일 : 1992년 09월 22일<br class="jooafont">학력 : 세종대학교 디지털콘텐츠학과<br class="jooafont">이메일 : kmjjbin@daum.net<br class="jooafont">연락처 : 010-7105-9326<br class="jooafont">취미 : 피아노치기<br class="jooafont">특기 : 독서<br></p>
                  </div>
               </div>
            </div>   <!--/.row-->
         </div><!--section-->
      </div><!--/.container-->
    </section><!--/about-us-->
   
    	<!--/#bottom  -->

	<section id="bottom">
		<div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="widget">
						<h3>Company</h3>
						<ul>
							<li><a href="#">About us</a></li>
							<li><a href="#">We are hiring</a></li>
							<li><a href="#">Terms of use</a></li>
							<li><a href="#">Contact us</a></li>
						</ul>
					</div>
				</div>
				<!--/.col-md-3-->

				<div class="col-md-3 col-sm-6">
					<div class="widget">
						<h3>Support</h3>
						<ul>
							<li><a href="#">Faq</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">Forum</a></li>
							<li><a href="#">Documentation</a></li>
						</ul>
					</div>
				</div>
				<!--/.col-md-3-->

				<div class="col-md-3 col-sm-6">
					<div class="widget">
						<h3>Developers</h3>
						<ul>
							<li><a href="#">Web Development</a></li>
							<li><a href="#">SEO Marketing</a></li>
							<li><a href="#">Theme</a></li>
							<li><a href="#">Development</a></li>
							<li><a href="#">Email Marketing</a></li>
							<li><a href="#">Plugin Development</a></li>
						</ul>
					</div>
				</div>
				<!--/.col-md-3-->

				<div class="col-md-3 col-sm-6">
					<div class="widget">
						<h3>Our Partners</h3>
						<ul>
							<li><a href="#">Adipisicing Elit</a></li>
							<li><a href="#">Eiusmod</a></li>
							<li><a href="#">Tempor</a></li>
							<li><a href="#">Veniam</a></li>
							<li><a href="#">Exercitation</a></li>
						</ul>
					</div>
				</div>
				<!--/.col-md-3-->
			</div>
		</div>
	</section>
	<!--/#bottom-->
	<footer id="footer" class="midnight-blue">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					&copy; 2015 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
				</div>
				<div class="col-sm-6">
					<ul class="pull-right">
						<li><a href="#">Home</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Faq</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/#footer-->


	<script src="js/jquery.js"></script>
	<script type="text/javascript">
		$('.carousel').carousel()
	</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/wow.min.js"></script>
</body>
</html>