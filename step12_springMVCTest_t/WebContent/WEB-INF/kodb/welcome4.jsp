<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
<title>My Wish List</title>
</head>
<!-- core CSS -->
     <link rel="stylesheet" href="css/intlTelInput.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
<style>
   .a {
      border: solid red 5px
   }
   
   span {
      width: 150px;
      color: red
   }
   
   input {
      border: solid gray 1px
   }
   
   table {
      width: 40%
   }
   
   th,td {
      border: 1px gray solid;
      text-align: center;
      padding: 3px
   }
   
   h2,h5 {
      text-align: center
   }
</style>

<script src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">
   $(document)   .ready(function() {
      function getData() {
         $.ajax({
               url : "selectWish.do",
               type : "post",
               dataType : "json",
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
                  $("#listTable tr:eq(0)").after(table);
               },
               error : function(err) {
                  alert(err + " : fail");
               }
            }) //end of ajax
         }//end of getData()

            $(document).on("click", "#del", function() {
               $.ajax({
                  url : "deleteWish.do",
                  type : "post",
                  dataType : "text",
                  data : "id=" + $(this).attr("name"),
                  success : function(data) {
                     if (data == "ok") {
                        alert("삭제 성공");
                        getData();
                     } else {
                        alert("삭제 실패")
                     }
                  },
                  error : function(err) {
                     alert(err + " : wishList 삭제 실패")
                  }
               })
            });

            getData();
         });//end of ready()
</script>

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
											<font style="color: white;">, Hello!</font> 
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
                        <li><a class="jooafont" href="portfolio.jsp">Info Graphic</a></li>
                        <li><a class="jooafont" href="selectFestival.do">Introducing</a></li> 
                        <li><a class="jooafont" href="contact-us.jsp">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
       
            <div class="media-body post_reply_comments">
                    <h5>Wish List</h5>
                        <div class="col-sm-12">
                            <table id="listTable" cellspacing="0" align="center">
                               <tr bgcolor="#c52d2f">
                                <th width="3%"><font color="white"><i class="fa fa-angle-double-right"></i>id</font></th>
                                <th width="3%"><font color="white"><i class="fa fa-angle-double-right"></i>festivalNum</font></th>
                                <th width="10%"><font color="white"><i class="fa fa-angle-double-right"></i>festivalName</font></th>
                                <th width="3%"><font color="white"><i class="fa fa-angle-double-right"></i>Delete</font></th>
                                </tr>
                            </table>
                        </div>
                 </div>
                    
                    <!-- <div class="media-body post_reply_comments">
                                <h4>NOVEMBER 9, 2013 AT 9:15 PM</h4>
                                <a href="#">Delete</a>
                            </div> -->
   
       <!-- <div class="entry-meta" table id="listTable">
           <span id="publish_date">07  NOV</span>
           <span><i class="fa fa-user"></i> <a href="#"> Id</a></span>
           <span><i class="fa fa-comment"></i> <a href="blog-item.html#comments">Festival</a></span>
           <span><i class="fa fa-heart"></i><a href="#">56 Likes</a></span>
       </div> -->
       
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
   
</body>
</html>