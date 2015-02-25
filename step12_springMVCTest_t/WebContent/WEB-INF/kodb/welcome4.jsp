<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

<body>
	<!-- <table id="listTable" cellspacing="0">
		<tr bgcolor="#FOFOF7">
			<th>id</th>
			<th>festivalNum</th>
			<input type="button" value="모든 wishList 보기" id="btn">
		</tr>
	</table> -->
	
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
   
</body>
</html>