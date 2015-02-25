<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en">
<head>
    <meta http-equiv="Content-Language" content="ko">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여행지 이름으로~ | YW3</title>
    
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
        width: 360px;
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

	<script src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript">
	$(document)	.ready(function() {
		/* 3. ê°ìë ëª¨ë  íì ì ë³´ ê²ì í íë©´ì ì¶ë ¥íë ë¡ì§ */
		function getData() {
			$.ajax({
					url : "selectWish.do",
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

				/* 4. ì­ì íê¸°(oní¨ìë ëì ì¼ë¡ ìì±ë ììì ì´ë²¤í¸ì ì©)
				1. ë¬¸ë² : $(document).on("ì´ë²¤í¸ì¢ë¥", ì´ë²¤í¸ëì, í¨ì); 
				2. ë¡ì§ : ëª¨ë  íì ì ë³´ ë³´ê¸° listìì ê° íìë³ "ì­ì " ë²í¼ í´ë¦­ì í´ë¹ íìì ë³´ë§ ì­ì íë ë¡ì§ 
				3. êµ¬í : ì­ì  í ê°±ì ë íì ì ë³´ ë¦¬ì¤í¸ íë©´ì ì¬ì¤í */
				$(document).on("click", "#del", function() {
					$.ajax({
						url : "deleteWish.do",
						type : "post",
						dataType : "text",
						data : "id=" + $(this).attr("name"), //ìë²ì ì ì¡í  ë°ì´í°
						success : function(data) {
							if (data == "ok") {
								alert("삭제 성공");
								getData();
							} else {
								alert("삭제 실패")
							}
						},
						error : function(err) {//ì¤í¨íìë
							alert(err + " : wishList 삭제 실패")
						}
					})
				});

				//ë ì½ë ê°ì ¸ì¤ê¸°ë í¨ì í¸ì¶
				getData();
			});//end of ready()
	</script>


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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                        <!-- <li><a href="services.html">Services</a></li> -->
                        <li><a href="portfolio.html">여행 Tip</a></li>
                        <!-- <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li class="active"><a href="blog-item.jsp">Blog Single</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li> -->
                        <li class="active"><a href="blog.jsp">여행 소개</a></li> 
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->


    <section id="blog" class="container">
        <div class="center">
            <h2>여행 소개</h2>
            <p class="lead">상세 여행 소개 페이지</p>
        </div>

        <div class="blog">
            <div class="row">
                <div class="col-md-8">
                    <div class="blog-item">
                        <img class="img-responsive img-blog" src="images/blog/blog1.png" width="100%" alt="" />
                            <div class="row">  
                                <div class="col-xs-12 col-sm-2 text-center">
                                    <div class="entry-meta">
                                        <span id="publish_date">07  NOV</span>
                                        <span><i class="fa fa-user"></i> <a href="#"> John Doe</a></span>
                                        <span><i class="fa fa-comment"></i> <a href="blog-item.jsp#comments">2 Comments</a></span>
                                        <span><i class="fa fa-heart"></i><a href="#">56 Likes</a></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-10 blog-content">
                                    <h2>켱복쿵 야간개장</h2>
                                    <p>경복궁 갈바엔 창경궁을 가라</p>

                                    <p>알겠냐?</p>
                                    <button type="submit" class="btn2 btn-primary2 btn-lg" required="required" id="btn">Wish</button>
                                    
                                    <script>
	                                    $(document)	.ready(function() {
	                               		 	$("#btn").click(function() {
												$.ajax({
													url : "insert.do",
													type : "post",
													dataType : "text",
													data : $("#inForm").serialize(),
													success : function(data) {
														if (data == "ok") {
															alert("insert Success");
															$("input[type=text]").val(""); //text박스 모두 지우기
															getData(); //모든레코드 검색하는 함수 호출
														} else {
															alert("insert fail");
														}
													},
													error : function(data) {
														alert(data + ' : insert error');
													}
												}); //end of ajax
											})//end of 가입로직
										});//end of ready()
                                    </script>
                                    
                                </div>
                            </div>
                        </div><!--/.blog-item-->
                        
                        <h1 id="comments_title">3 Comments</h1>
                        <div class="media comment_section">
                            <div class="pull-left post_comments">
                                <a href="#"><img src="images/blog/girl.png" class="img-circle" alt="" /></a>
                            </div>
                            <div class="media-body post_reply_comments">
                                <h3>경복궁</h3>
                                <h4>NOVEMBER 9, 2013 AT 9:15 PM</h4>
                                <p>글 내려라</p>
                                <a href="#">Reply</a>
                            </div>
                        </div> 
                        <div class="media comment_section">
                            <div class="pull-left post_comments">
                                <a href="#"><img src="images/blog/boy2.png" class="img-circle" alt="" /></a>
                            </div>
                            <div class="media-body post_reply_comments">
                                <h3>창경궁</h3>
                                <h4>NOVEMBER 9, 2013 AT 9:15 PM</h4>
                                <p>난 이 글 좋은데?</p>
                                <a href="#">Reply</a>
                            </div>
                        </div> 
                        <div class="media comment_section">
                            <div class="pull-left post_comments">
                                <a href="#"><img src="images/blog/boy3.png" class="img-circle" alt="" /></a>
                            </div>
                            <div class="media-body post_reply_comments">
                                <h3>경복궁</h3>
                                <h4>NOVEMBER 9, 2013 AT 9:15 PM</h4>
                                <p>싸우자</p>
                                <a href="#">Reply</a>
                            </div>
                        </div> 


                        <div id="contact-page clearfix">
                            <div class="status alert alert-success" style="display: none"></div>
                            <div class="message_heading">
                                <h4>Comment를 남기세요</h4>
                                <p>Make sure you enter the(*)required information where indicate.HTML code is not allowed</p>
                            </div> 
      
                            <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php" role="form">
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label>Name *</label>
                                            <input type="text" class="form-control" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label>Email *</label>
                                            <input type="email" class="form-control" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label>URL</label>
                                            <input type="url" class="form-control">
                                        </div>                    
                                    </div>
                                    <div class="col-sm-7">                        
                                        <div class="form-group">
                                            <label>Message *</label>
                                            <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
                                        </div>                        
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
                                        </div>
                                    </div>
                                </div>
                            </form>     
                        </div><!--/#contact-page-->
                    </div><!--/.col-md-8-->

                <aside class="col-md-4">
                	 <div class="widget blog_gallery">
                        <h3>Photos</h3>
                        <ul class="sidebar-gallery">
                            <li><a href="#"><img src="images/blog/gallery1.png" alt="" /></a></li>
                            <li><a href="#"><img src="images/blog/gallery2.png" alt="" /></a></li>
                            <li><a href="#"><img src="images/blog/gallery3.png" alt="" /></a></li>
                            <li><a href="#"><img src="images/blog/gallery4.png" alt="" /></a></li>
                            <li><a href="#"><img src="images/blog/gallery5.png" alt="" /></a></li>
                            <li><a href="#"><img src="images/blog/gallery6.png" alt="" /></a></li>
                        </ul>
                    </div><!--/.blog_gallery-->
                
                	<div class="widget blog_gallery">
                        <h3>Map부분</h3>
                           <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3162.335871884976!2d126.98357700000001!3d37.570707999999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2ee98180615%3A0x8c36d262dc3a051e!2z7ZWc6rWt642w7J207YSw67Kg7J207Iqk7KeE7Z2l7JuQ!5e0!3m2!1sko!2skr!4v1423569599455"></iframe>
                    </div>
                        
                    <div class="widget blog_gallery">
                     	<h3>Ad부분</h3>
                     	<img src="images/audition.png"/>
                    </div>
                     	
                   <div class="widget categories">
                        <div class="row">
                            <div class="col-sm-12">
                            	<h4>Keyword Search</h4>
                            		<input type="text" class="controls" autocomplete="off" placeholder="Enter a keyword">
                            		<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 41px; height: 27px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -533px -184px no-repeat;" border="0" class="gwt-Image">
                            	<h4>Date</h4>	
                            	<form>
                            	<input type="text" id="txtDate" value="" onclick="fnPopUpCalendar(txtDate,txtDate,'yyyy/mm/dd')" class='text_box1'>
                            	<a> ~ </a>
                            	<input type="text" id="txtDate2" value="" onclick="fnPopUpCalendar(txtDate2,txtDate2,'yyyy/mm/dd')" class='text_box1'>
								</form>
                            	
	                            
	                            <div class="EventSearchBox_checkbox">
									<span class="EventSearchBox_CheckboxLabels" style="width: 160px; height: 22px;">
										<input type="checkbox" id="gwt-uid-10" tabindex="0">
										<label for="gwt-uid-10">I'm flexible on the dates</label>
									</span>
									<span class="EventSearchBox_CheckboxLabels" style="width: 160px; height: 22px;">
										<input type="checkbox" id="gwt-uid-9" tabindex="0">
										<label for="gwt-uid-9">Search all dates</label>
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
										
 			                        <h4>Location Search</h4>
                            		<input id="pac-input" class="controls" type="text" placeholder="Enter a location">
                            		<img src="http://joobili.com/Joobili/JoobiliGWT/clear.cache.gif" style="width: 41px; height: 27px; cursor: pointer; background: url(http://joobili.com/Joobili/JoobiliGWT/F08E521F12735725DBF1F1C2A3432D1D.cache.png) -533px -184px no-repeat;" border="0" class="gwt-Image">
                            		<div id="map-canvas"></div>
                            		<br><br>
									
                            </div>
                        </div>                     
                    </div>
    				
    				

                </aside>     

            </div><!--/.row-->

         </div><!--/.blog-->

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
	<script>
		$("#mobile-number").intlTelInput();
	</script>
</body>
</html>