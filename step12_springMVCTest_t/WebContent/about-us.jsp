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
                        <li><a class="jooafont" href="blog.jsp?pg=1">여행 소개</a></li> 
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
						<div class="item active">
							<div data-wow-duration="1000ms" data-wow-delay="600ms">
							<a href="#introduce">
								<img src="images/aaaa1.png" class="img-responsive" alt="">
							</a>
							</div>
						</div>
						<div class="item">
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
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
			
			
			<!-- Our Skill -->
			<div class="skill-wrap clearfix" id="reason">
			
				<div class="center wow fadeInDown">
					<br><br><br>
					<h2 class="jooafont">ë¹ì ì´ YW3ë¥¼ ì¨ì¼íë ì´ì </h2>
					<p class="jooafont" class="lead">[ì°ë¦¬ê° YW3ë¥¼ ë§ë  ì´ì ]<br>ì¬íì ë ëê³  ì¶ìë°...ì´ëë¡ ê°ì§ ëª¨ë¥´ê² ë¤ë©´?</p>
				</div>
				
				<div class="row">
		
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="joomla-skill">                                   
								<p class="jooafont"><em>85%</em></p>
								<p class="jooafont">í´ì¸ ì¬í ë ëì!</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="html-skill">                                  
								<p class="jooafont"><em>95%</em></p>
								<p class="jooafont">ìíë ë ì§ë¡ ì°¾ê³ ì¶ì´?</p>
							</div>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
							<div class="css-skill">                                    
								<p class="jooafont"><em>80%</em></p>
								<p class="jooafont">ë¬´ì¨ ì¶ì ê° ìì§?</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<div class="wp-skill">
								<p class="jooafont"><em>90%</em></p>
								<p class="jooafont">ì¶ì  íê¸°ê° ê¶ê¸í´?</p>                                     
							</div>
						</div>
					</div>
					
	
            </div><!--/.our-skill-->
			

			<!-- our-team -->
			<div class="team">
				<div class="center wow fadeInDown" id="introduce">
					<h2 class="jooafont">ê°ë°ì ìê°</h2>
					<!-- <p class="lead">íì¥ ì£¼ë ìë ì°ë¦¬ë íëê° ë¨ <br> ì´ê²ì´ ë°ë¡ í ìí¬..ëê¹?</p> -->
				</div>

				<div class="row clearfix">
					<div class="col-md-4 col-sm-6">	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<img class="media-object" src="images/ksj.jpg" alt="">
								</div>
								<div class="media-body">
									<h4 class="jooafont">ê¹ ìì§</h4>
									<h5 class="jooafont">Project Manager</h5>
									<!-- ê°ì ìì ìë ê¸°ì  ì ê¸° -->
									<ul class="tag clearfix">
										<li class="btn"><font color="red">Java/Android</font></li>
										<li class="btn"><font color="red">C/C++/C#</font></li>
										<li class="btn"><font color="red">JSP/PHP</font></li>
										<li class="btn"><font color="red">SQL/PLSQL</font></li>
										<li class="btn"><font color="red">JavaScript</font></li>
									</ul>
									<!-- ë´ ìì ì£¼ì ì ê¸° -->
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p class="jooafont">ìëìì¼ : 1989ë 09ì 22ì¼<br class="jooafont">íë ¥ : ì¸íëíêµ ì»´í¨í°ê³µíê³¼<br class="jooafont">ì´ë©ì¼ : seojineer@naver.com<br class="jooafont">ì°ë½ì² : 010-7105-9326<br class="jooafont">ì·¨ë¯¸ : í¼ìë¸ì¹ê¸°<br class="jooafont">í¹ê¸° : ëì</p>
						</div>
					</div><!--/.col-lg-4 -->
					
					
					<div class="col-md-4 col-sm-6 col-md-offset-2">	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<img class="media-object" src="images/jooa.jpg" alt="">
								</div>
								<div class="media-body">
									<h4 class="jooafont">ì  ì£¼ì</h4>
									<h5 class="jooafont">í¼í°ì ì </h5>
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
							<p class="jooafont">ìëìì¼ : 1990ë 04ì 13ì¼<br class="jooafont">íë ¥ : ëêµ­ëíêµ ì ë³´íµì ê³µíê³¼<br class="jooafont">ì´ë©ì¼ : shinjooa90@naver.com<br class="jooafont">ì°ë½ì² : 010-4864-1777<br class="jooafont">ì·¨ë¯¸ : í¼ìë¸ì¹ê¸°<br class="jooafont">í¹ê¸° : ëì</p>
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
									<img class="media-object" src="images/team3.png" alt="">
								</div>

								<div class="media-body">
									<h4 class="jooafont">ê¹ íì°</h4>
									<h5 class="jooafont">ë¤ìì ìê¸°</h5>
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
							<p class="jooafont">ìëìì¼ : 1990ë 09ì 22ì¼<br class="jooafont">íë ¥ : êµ­ë¯¼ëíêµ ê²½ìì ë³´íê³¼<br class="jooafont">ì´ë©ì¼ : kmjjbin@daum.net<br class="jooafont">ì°ë½ì² : 010-7105-9326<br class="jooafont">ì·¨ë¯¸ : ì¼ê¸°ì°ê¸°<br class="jooafont">í¹ê¸° : ëì</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-md-offset-2">
						<div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="media">
								<div class="pull-left">
									<img class="media-object" src="images/team4.png" alt="">
								</div>
								<div class="media-body">
									<h4 class="jooafont">ë° ì ë¹</h4>
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
							<p class="jooafont">ìëìì¼ : 1992ë 09ì 22ì¼<br class="jooafont">íë ¥ : ì¸ì¢ëíêµ ëì§í¸ì½íì¸ íê³¼<br class="jooafont">ì´ë©ì¼ : kmjjbin@daum.net<br class="jooafont">ì°ë½ì² : 010-7105-9326<br class="jooafont">ì·¨ë¯¸ : í¼ìë¸ì¹ê¸°<br class="jooafont">í¹ê¸° : ëì<br></p>
						</div>
					</div>
				</div>	<!--/.row-->
			</div><!--section-->
		</div><!--/.container-->
    </section><!--/about-us-->
	
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

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
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
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
    </footer><!--/#footer-->
    

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