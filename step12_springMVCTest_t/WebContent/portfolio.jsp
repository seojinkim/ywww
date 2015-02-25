<%@page import="model.domain.FestivalVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여행 Tip | YW3</title>
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
                        <li class="active"><a class="jooafont" href="portfolio.jsp">인포그래픽</a></li>
                        <li><a class="jooafont" href="blog.jsp?pg=1">여행 소개</a></li> 
                        <li><a class="jooafont" href="contact-us.jsp">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
    
    <section id="portfolio">
        <div class="container">
            <div class="center wow fadeInDown">
               <h2 class="jooafont">인포그래픽</h2>
               <p class="jooafont">정보(Info)에 디자인(Graphic)을 더하여 보다 이해하기 쉽도록 여행정보를 제공하는 서비스 입니다.</p>
            </div>
        

            <ul class="portfolio-filter text-center">
               <!-- data-filter 속성에 .className을 적고 portfolio-item에 옆에 같이 적으면 됨  -->
               <!-- 전체, 비자발급, 여행준비물, 공항안내, 출입국정보, 현지안전, 국내여행정보, 해외여행정보 -->
               <!-- *, .visa, .preparation, .airport, .immigration, .safety, .domestic, .overseas -->
                <li><a class="jooafont" class="btn btn-default active" href="#" data-filter="*">전체</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".visa">비자발급</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".preparation">여행준비물</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".airport">공항안내</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".immigration">출입국정보</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".safety">현지안전</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".domestic">국내여행정보</a></li>
                <li><a class="jooafont" class="btn btn-default" href="#" data-filter=".overseas">해외여행정보</a></li>
            </ul><!--/#portfolio-filter-->

            <div class="row">
                <div class="portfolio-items">
                
                <!-- VISA -->
                    <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_1.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">인도비자 E-VISA시행</a></h3>
                                    <p>인터넷 시스템을 통한 비자 발급 서비스</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
               <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_2.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">2014 국가별 비자 제도_아메리카</a></h3>
                                    <p>입국허가요건_아메리카편</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_3.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">2014 국가별 비자 제도_유럽</a></h3>
                                    <p>입국허가요건_유럽편</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_4.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">2014 국가별 비자 제도_아시아</a></h3>
                                    <p>입국허가요건_아시아편</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_4.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_5.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">미국비자, ESTA신청하기</a></h3>
                                    <p>ESTA 간편하게 신청하자!</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_5.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item visa col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_visa_6.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">걱정없는 중국비자</a></h3>
                                    <p>준비부터 도착까지 걱정없는 여행!</p>
                                    <a class="preview" href="images/portfolio/full/full_visa_6.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    
                    <!-- AIRPORT -->
               <div class="portfolio-item airport col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_airport_1.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">인천공항_의류보관 서비스</a></h3>
                                    <p>인천공항 코트룸, 의류보관 서비스</p>
                                    <a class="preview" href="images/portfolio/full/full_airport_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item airport col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_airport_2.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">참 쉬운 댈러스 포트워스</a></h3>
                                    <p>댈러스 포트워스 공항 사용 안내서</p>
                                    <a class="preview" href="images/portfolio/full/full_airport_2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item airport col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_airport_3.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">인천국제공항이용법</a></h3>
                                    <p>난생처음 해외여행자를 위한 인천 국제공항 참~쉬운 이용법</p>
                                    <a class="preview" href="images/portfolio/full/full_airport_3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item airport col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_airport_4.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">인천공항 직통열차 이용하기</a></h3>
                                    <p>도심공항터미널</p>
                                    <a class="preview" href="images/portfolio/full/full_airport_4.jsp" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    
                    <!-- PREPARATION -->
                    <div class="portfolio-item preparation col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_preparation_1.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">간편하게 짐싸기 TIP</a></h3>
                                    <p>여행갈 때 필요한듯 아닌듯 고민된다면?</p>
                                    <a class="preview" href="images/portfolio/full/full_preparation_1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item preparation col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_preparation_2.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">안전하게 여행하기!</a></h3>
                                    <p>난 소중하니까! 안전하게 여행하기</p>
                                    <a class="preview" href="images/portfolio/full/full_preparation_2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item preparation col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_preparation_3.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">라오스 여행준비물</a></h3>
                                    <p>순수의 나라 라오스를 알차게 여행하기 위해 잊지말아야할 몇 가지!</p>
                                    <a class="preview" href="images/portfolio/full/full_preparation_3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
               <div class="portfolio-item preparation col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_preparation_4.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">주요국가_전기플러그안내</a>
                           </h3>
                           <p>세계 주요 국가 전기 플러그 안내</p>
                           <a class="preview" href="images/portfolio/full/full_preparation_4.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/.portfolio-item-->
               <div class="portfolio-item preparation col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_preparation_5.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">2014 기내반입 허용물품</a>
                           </h3>
                           <p>기내반입 허용물품</p>
                           <a class="preview" href="images/portfolio/full/full_preparation_5.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               
               <!-- IMMIGRATION -->
               <div class="portfolio-item immigration col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_immigration_1.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">필리핀 여행자 통관정보</a>
                           </h3>
                           <p>필리핀 여행자 통관 정보 및 휴대 물품 반입시 주의사항</p>
                           <a class="preview" href="images/portfolio/full/full_immigration_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item immigration col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/portfolio/thumbnails/thumb_immigration_2.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">유럽공항 액체류 반입규정</a></h3>
                                    <p>유럽 여행 갈 때 꼭 확인하자! 액체류 반입규정!</p>
                                    <a class="preview" href="images/portfolio/full/full_immigration_2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item immigration col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_immigration_3.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">태국 통관 주의사항</a>
                           </h3>
                           <p>공항을 떠나기 전까지 지켜야할 것들!</p>
                           <a class="preview" href="images/portfolio/full/full_immigration_3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item immigration col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_immigration_4.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">필리핀 소아입국 규정</a>
                           </h3>
                           <p>필리핀 소아 입국 규정! 미리미리 체크 하세요!</p>
                           <a class="preview" href="images/portfolio/full/full_immigration_4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               
               <!-- SAFETY -->
               <div class="portfolio-item safety col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_safety_1.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">안전없이 물놀이도 없다!</a>
                           </h3>
                           <p>상황별 물놀이 사고 예방법 알아보기</p>
                           <a class="preview" href="images/portfolio/full/full_safety_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               
               <!-- DOMESTIC -->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_1.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">우리동네 숨은 장터</a>
                           </h3>
                           <p>숨은장터!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_2.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">해파리 주의보</a>
                           </h3>
                           <p>여름철! 해파리에 쏘였다면!?</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_3.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">자전거 안전하게 즐기기</a>
                           </h3>
                           <p>자전거 안전하게 즐기기!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_4.png" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">한라산 탐방로</a>
                           </h3>
                           <p>유네스코 세계 자연유산 한라산 탐방로</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_5.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">캠핑하기 좋은날!</a>
                           </h3>
                           <p>서울에서 즐기는 캠핑의 즐거움!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_5.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_6.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">안산.대부도 여행</a>
                           </h3>
                           <p>안산.대부도 여행</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_6.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_7.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">제주 올레?!</a>
                           </h3>
                           <p>도보여행 제주도!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_7.jsp" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_8.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">우리나라의 다양한 축제</a>
                           </h3>
                           <p>4계절 모두 아름다운, 우리나라 곳곳에서 즐기는 다양한 축제!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_9.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">한라산 방문안내</a>
                           </h3>
                           <p>백롬담 만나러 가는 길</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_9.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item domestic col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_domestic_10.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">안산 가족여행 추천코스</a>
                           </h3>
                           <p>테마별 하루일정과 스팟별 알찬정보!</p>
                           <a class="preview" href="images/portfolio/full/full_domestic_10.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               
               <!-- OVERSEAS -->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_1.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">이제 일본도 렌터카다!</a>
                           </h3>
                           <p>오키나와를 렌터카로 여행하는 완벽한 방법</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_2.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">장가계의 모든 것</a>
                           </h3>
                           <p>똑독하게 미리 미리 알고 가자!</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_3.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">국재 저비용항공</a>
                           </h3>
                           <p>국내 저비용 항공 기내식 서비스</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_4.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">일본 온천&료칸 안내서</a>
                           </h3>
                           <p>스파하고 따뜻한 휴식!</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_4.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_5.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">일본 면세제도</a>
                           </h3>
                           <p>일본 면세제도 달라진점</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_5.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_6.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">시차 적응하기 팁</a>
                           </h3>
                           <p>시차 적응하기 팁</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_6.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_7.png" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">호주/뉴질랜드 여행정보</a>
                           </h3>
                           <p>호주와 뉴질랜드, 당당하게 더나기 위한여행정보!</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_7.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_8.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">세계맥주 즐기기</a>
                           </h3>
                           <p>알고먹자, 각 나라별 대표맥주! WORLD BEER!</p>
                           <a class="preview" href="images/portfolio/full/full_overseas_8.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                        </div>
                     </div>
                  </div>
               </div><!--/.portfolio-item-->
               <div class="portfolio-item overseas col-xs-12 col-sm-4 col-md-3">
                  <div class="recent-work-wrap">
                     <img class="img-responsive" src="images/portfolio/thumbnails/thumb_overseas_9.jpg" alt="">
                     <div class="overlay">
                        <div class="recent-work-inner">
                           <h3>
                              <a href="#">뉴질랜드 여행_북섬</a>
                           </h3>
                           <p>뉴질랜드 여행을 위한 MUST STOP BY 북섬</p>
                           <a class="