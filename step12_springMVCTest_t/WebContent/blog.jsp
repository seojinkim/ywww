
<%@page import="model.domain.FestivalVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	final int ROWSIZE = 6;
	final int BLOCK = 5;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1);
	int end = (pg*ROWSIZE);
	
	int allPage = 0;
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>

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


	<!-- <script src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document)	.ready(function() {
		function getData() {
			$.ajax({
				url : "selectFestival.do",
				type : "post",
				dataType : "json", //ê²°ê³¼ë°ì´í°íì
				success : function(data) {
					var table = "";
					$("#listTable tr:gt(0)").remove();

					$(data.list).each(
							function(index, item) {
								table += "<tr><td>" + item.id + "</td><td>"
										+ item.festivalNum + "</td><td>"
										+ item.festivalName + "</td><td>";
								table += "<input type='button' value='Click Me' id='del' name='"+item.id+"'></td></tr>"
							});
					//íì´ë¸ì ì¶ê°
					$("#listTable tr:eq(0)").after(table);
				},
				error : function(err) {//ì¤í¨íì ë
					alert(err + " : fail");
				}
			}) //end of ajax
		}//end of getData()
				getData();
			});//end of ready()
</script> -->


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
                        <li class="active"><a class="jooafont" href="blog.jsp?pg=1">여행 소개</a></li> 
                        <li><a class="jooafont" href="contact-us.jsp">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
      
    </header><!--/header-->

    <section id="blog" class="container">
        <div class="center">
            <h2 class="jooafont">여행 소개</h2>
            <p class="jooafont" class="lead">빤타스틱 페스티벌 </p>
        </div>

        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 blog-content">
                            <%
                            
                           		List<FestivalVo> list = (List<FestivalVo>)(session.getAttribute("festivalList"));
                        	
	                            allPage = (int)Math.ceil(list.size()/(double)ROWSIZE);
	                    		
	                    		if(endPage > allPage) {
	                    			endPage = allPage;
	                    		}
	                    		
                            	int pageNum = 1;
                            	if(request.getParameter("pg") != null){
                            		if(request.getParameter("pg").equals("0")){
                            			pageNum = 1;
                            		}
                            		else{
                            			pageNum = Integer.parseInt(request.getParameter("pg"));
                            		}
                            	}
                            	
                            	FestivalVo tempFestival = null;
                            	for(int i = (pageNum - 1) * 10; i < (pageNum * 10) - 1 ; i++)
                            	{
                            		tempFestival = list.get(i);
                            %>
                           
	                            <p class="jooafont" class="lead">#<%= tempFestival.getFestivalName() %></p> 
	                            <a href="FestivalOne.do?num=<%= tempFestival.getFestivalNum() %>"><img class="img-responsive img-blog" src="festivalP/<%= tempFestival.getFestivalNum() %>/<%= tempFestival.getFestivalNum() %>_1.jpg" width="100%" alt="" /></a>
                            <% 
                            	}
                            %>
                            <%-- <c:forEach items="${sessionScope.festivalList}" var="list" begin="<%=Integer.parseInt(request.getParameter("pg")) %>" end="<%=Integer.parseInt(request.getParameter("pg")) %>">
                            	<%System.out.println(request.getParameter("pg").getClass()); %>
                            	<p class="jooafont" class="lead">#${list.festivalName}</p> 
                                <a href="FestivalOne.do?num=${list.festivalNum}"><img class="img-responsive img-blog" src="festivalP/${list.festivalNum}/${list.festivalNum}_1.jpg" width="100%" alt="" /></a>
                             </c:forEach>  --%>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                    <center>
                    <ul class="pagination pagination-lg">
                 	   <li><a href="blog.jsp?pg=<%=startPage-1%>"><i class="fa fa-long-arrow-left"></i>Previous Page</a></li>
						<%
							for(int i=startPage; i<= endPage; i++){
								if(i==pg){
						%>
									<li class="active"><a class="jooafont" href="blog.jsp?pg=<%=i %>"><%=i %></a></li>
						<%
								}else{
						%>
									<li><a class="jooafont" href="blog.jsp?pg=<%=i %>"><%=i %></a></li>
						<%
								}
							}
						%>
						<li><a class="jooafont" href="blog.jsp?pg=<%=endPage+1%>">Next Page<i class="fa fa-long-arrow-right"></i></a></li>
                    </ul><!--/.pagination-->
                    </center>
                </div><!--/.col-md-8-->

                <aside class="col-md-4">
    				<div class="widget categories">
                        <div class="row">
                            <div class="col-sm-12">
                            	<h4>Keyword Search</h4>
                            	<form action="selectFestivalByKeyword.do"  name="selectFestivalByKeyword.do">
                                    <input type="text" id="keyword" name = "keyword" class="controls" autocomplete="off" placeholder="Enter a keyword">
                                    <button type="submit" class="btn3 btn-primary3 btn-lg" required="required" id="btn">go</button>
                                </form>
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