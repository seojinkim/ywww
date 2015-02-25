
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여행 소개 | YW3</title>
    
    <!-- core CSS -->
    <link rel="stylesheet" href="css/intlTelInput.css">
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
    
    <style>
      html, body, #map-canvas {
      }
      .controls {
        /* margin-top: 16px; */
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        width: 300px;
        /* outline: none; */
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }
      #pac-input {
        background-color: #fff;
        padding: 0 11px 0 13px;
        width: 320px;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        text-overflow: ellipsis;
      }
      .pac-container {
        font-family: Roboto;
      }
}
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>

    <script>
	function initialize() {
	  var mapOptions = {
	    center: new google.maps.LatLng(-33.8688, 151.2195),
	    zoom: 13
	  };
	  var map = new google.maps.Map(document.getElementById('map-canvas'),
	    mapOptions);
	
	  var input = /** @type {HTMLInputElement} */(
	      document.getElementById('pac-input'));
	
	  var autocomplete = new google.maps.places.Autocomplete(input);
	  autocomplete.bindTo('bounds', map);
	
	  google.maps.event.addListener(autocomplete, 'place_changed', function() {
	    infowindow.close();
	    marker.setVisible(false);
	    var place = autocomplete.getPlace();
	    if (!place.geometry) {
	      return;
	    }
	  });
	  setupClickListener('changetype-geocode', ['geocode']);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-user"></i> Please Sign in / Welcome [NAME]</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
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
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a class="jooafont" href="index.jsp">Home</a></li>
                        <li><a class="jooafont" href="about-us.html">About Us</a></li>
                        <!-- <li><a href="services.html">Services</a></li> -->
                        <li><a class="jooafont" href="portfolio.html">인포그래픽</a></li>
                        <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-item.html">Blog Single</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li> -->
                        <li class="active"><a class="jooafont" href="blog.jsp">여행 소개</a></li> 
                        <li><a class="jooafont" href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->

    <section id="blog" class="container">
        <div class="center">
            <h2 class="jooafont">여행 소개</h2>
            <p class="jooafont" class="lead">빤타스틱 페스티벌</p>
        </div>

        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <a href="blog-item.html"><img class="img-responsive img-blog" src="images/blog/blog1.png" width="100%" alt="" /></a>
                                <a href="blog-item.html"><img class="img-responsive img-blog" src="images/blog/blog2.jpg" width="100%" alt="" /></a>
                                <a href="blog-item.html"><img class="img-responsive img-blog" src="images/blog/blog2.jpg" width="100%" alt="" /></a>
                                <a href="blog-item.html"><img class="img-responsive img-blog" src="images/blog/blog2.jpg" width="100%" alt="" /></a>
                                <a href="blog-item.html"><img class="img-responsive img-blog" src="images/blog/blog2.jpg" width="100%" alt="" /></a>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                    <center>
                    <ul class="pagination pagination-lg">
                        <li><a href="blog.jsp?pageNum=currentPage+1%"><i class="fa fa-long-arrow-left"></i>Previous Page</a></li>
                        <li class="active"><a class="jooafont" href="#">1</a></li>
                        <li><a class="jooafont" href="#">2</a></li>
                        <li><a class="jooafont" href="#">3</a></li>
                        <li><a class="jooafont" href="#">4</a></li>
                        <li><a class="jooafont" href="#">5</a></li>
                        <li><a class="jooafont" href="#">Next Page<i class="fa fa-long-arrow-right"></i></a></li>
                    </ul><!--/.pagination-->
                    </center>
                </div><!--/.col-md-8-->

                <aside class="col-md-4">
    				<div class="widget categories">
                        <div class="row">
                            <div class="col-sm-12">
                            	<h4>Keyword Search</h4>
                                    <input type="text" id="pac-input" class="controls" autocomplete="off" placeholder="Enter a keyword">
                                    <button type="submit" class="btn3 btn-primary3 btn-lg" required="required" id="btn">go</button>
                            	<h4><br>Date</h4>	
                            	<form>
                            	<input type="text" id="txtDate" value="" onclick="fnPopUpCalendar(txtDate,txtDate,'yyyy/mm/dd')" class='text_box1'>
                            	<a> ~ </a>
                            	<input type="text" id="txtDate2" value="" onclick="fnPopUpCalendar(txtDate2,txtDate2,'yyyy/mm/dd')" class='text_box1'>
								</form>
                            	
	                            
	                            <div class="EventSearchBox_checkbox">
									<span class="EventSearchBox_CheckboxLabels" style="width: 160px; height: 22px;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="checkbox" id="gwt-uid-10" tabindex="0">
										<label for="gwt-uid-10" >I'm flexible on the dates</label>
									</span>
								</div>
	
	                            	<h4>Categories</h4>
	                            	<ul class="tag-cloud">
	                            		<div class="EventSearchBox_categories">
											<div style="position: relative; overflow: hidden; width: 500px; height: 150px;">
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 0px; top: 0px;">
												<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -440px -369px no-repeat;" border="0" class="gwt-Image">
												<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 60px; cursor: pointer;">Art</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 100px; top: 0px;">
												<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -323px -291px no-repeat;" border="0" class="gwt-Image">
												<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 50px; top: 0px; width: 70px; cursor: pointer;">Sport</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 140px; height: 45px; left: 220px; top: 0px;">
												<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -401px -369px no-repeat;" border="0" class="gwt-Image">
												<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 90px; cursor: pointer;">Celebrations</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 0px; top: 50px;">
												<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -506px -291px no-repeat;" border="0" class="gwt-Image">
												<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 60px; cursor: pointer;">Music</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 100px; top: 52px;">
													<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -574px -184px no-repeat;" border="0" class="gwt-Image">
													<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 50px; top: 0px; width: 70px; cursor: pointer;">Nature</a></li>
												</div>

												<div style="position: absolute; overflow: hidden; width: 140px; height: 45px; left: 220px; top: 52px;">
													<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -323px -330px no-repeat;" border="0" class="gwt-Image">
												<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 90px; cursor: pointer;">Shopping</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 0px; top: 100px;">
													<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -362px -369px no-repeat;" border="0" class="gwt-Image">
													<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 60px; cursor: pointer;">Family</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 130px; height: 45px; left: 100px; top: 100px;">
													<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 37px; height: 37px; display: none; position: absolute; left: 7px; top: 6px; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -479px -369px no-repeat;" border="0" class="gwt-Image"><img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -323px -369px no-repeat;" border="0" class="gwt-Image">
													<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 50px; top: 0px; width: 70px; cursor: pointer;">Unusual</a></li>
												</div>
												
												<div style="position: absolute; overflow: hidden; width: 140px; height: 45px; left: 220px; top: 100px;">
													<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 37px; height: 37px; display: none; position: absolute; left: 7px; top: 6px; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -479px -369px no-repeat;" border="0" class="gwt-Image"><img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 39px; height: 39px; position: absolute; left: 5px; top: 5px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -545px -291px no-repeat;" border="0" class="gwt-Image">
													<li><a class="btn btn-xs btn-primary" href="#" style="position: absolute; left: 45px; top: 0px; width: 92px; cursor: pointer;">Food & Drink</a></li>
												</div>
												
											</div>
										</div>
									</ul>
										
 			                        <!-- 
                            		<input name ="country_number" id="mobile-number" type="tel" placeholder="e.g. +1 702 123 4567">
									<input name ="country_number" id="mobile-number" type="tel" placeholder="">
									<button type="button">Submit</button>
                            		<br><br> -->
                            		
                            		<h4><br>Location Search</h4>
                            		<input id="pac-input" class="controls" type="text" placeholder="Enter a location">
                            		<button type="submit" class="btn3 btn-primary3 btn-lg" required="required" id="btn">go</button>
                            		<div id="map-canvas"></div>
                            		
									
                            </div>
                        </div>                     
                    </div><!--/.recent comments-->
    			</aside>  
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->

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
    <script type = "text/javascript" src="js/calendar.js"></script>
    <script src="js/jquery-1.11.0.js"></script>
	<script src="js/intlTelInput.js"></script>
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=true_or_false"></script>
	<script>
		$("#mobile-number").intlTelInput();
	</script>
</body>
</html>