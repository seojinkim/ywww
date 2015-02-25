<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact | YW3</title>
    
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
                        <li><a class="jooafont" href="about-us.jsp">About Us</a></li>
                        <li><a class="jooafont" href="portfolio.jsp">인포그래픽</a></li>
                        <li><a class="jooafont" href="selectFestival.do">여행 소개</a></li> 
                        <li class="active"><a class="jooafont" href="contact-us.jsp">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

     <section id="contact-info">
        <div class="center">                
            <h2 class="jooafont">문의하기</h2>
            <p class="jooafont" class="lead">이용하시면서 불편한 사항이나 개선점이 있다면 언제든지 알려주세요.</p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3162.335871884976!2d126.98357700000001!3d37.570707999999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2ee98180615%3A0x8c36d262dc3a051e!2z7ZWc6rWt642w7J207YSw67Kg7J207Iqk7KeE7Z2l7JuQ!5e0!3m2!1sko!2skr!4v1423569599455"></iframe>
                        </div>
                    </div>

                    <div class="col-sm-7 map-content" align="center">
                        <!-- <ul class="row"> -->
                            <!-- <li class="col-sm-6"> -->
                                <address>
                                <br><br><br>
                                    <h5 class="jooafont">• KODB</h5>
                                    <p class="jooafont">110-789 <br>
                                       서울시 종로구 종로타워 19층</p>
                                    <p class="jooafont">Phone : 02-3798-5300 <br>
                                    Email Address : kodb@domain.com</p>
                                </address>

                                <!-- <address>
                                    <h5>Zonal Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>                                
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address> -->
                            <!-- </li> -->


                           <!--  <li class="col-sm-6">
                                <address>
                                    <h5>Zone#2 Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>

                                <address>
                                    <h5>Zone#3 Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>
                            </li> -->
                        <!-- </ul> -->
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->

    <section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2 class="jooafont">메시지 보내기</h2>
                <p class="jooafont" class="lead">메시지를 남겨주시면, 이메일로 답변을 받아보실 수 있습니다.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label class="jooafont">이 름 *</label>
                            <input type="text" readonly  class="form-control" required="required" value="${sessionScope.userLoginInfo.name}">
                        </div>
                        <div class="form-group">
                            <label class="jooafont">이메일 *</label>
                            <input type="email" name="email" readonly  class="form-control" required="required" value="${sessionScope.userLoginInfo.id}">
                        </div>
                        <div class="form-group">
                            <label class="jooafont">핸드폰</label>
                            <input type="text" name="phone" readonly  class="form-control" required="required" value="${sessionScope.userLoginInfo.phone}">
                        </div>
                        <div class="form-group">
                            <label class="jooafont">회사 명</label>
                            <input type="text" class="form-control">
                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label class="jooafont">주제 *</label>
                            <input type="text" name="subject" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label class="jooafont">메시지 *</label>
                            <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
                        </div>                        
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">전송하기</button>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->

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
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>