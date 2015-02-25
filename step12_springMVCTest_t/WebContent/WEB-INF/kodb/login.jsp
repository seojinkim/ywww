<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>

<link rel="stylesheet" href="css/style.css" />

</head>

<script src="js/jquery-1.11.0.js"></script>
<!-- <script type="text/javascript">
	$(document)	.ready(function() {
			$("#btn").click(function() {
				$.ajax({
					url : "idCheck.do", //ìë²ì ìì²­í  ì ë³´
					type : "post", //methodë°©ì
					dataType : "text", //ìëµëë ë°ì´í° íì
					data : "id=" + $("#id").val(), //ìë²ì ì ì¡í  ë°ì´í°
					success : function(data) { //ìëµ ì±ê³µ
						alert(data);
						$("span").html(data);
					},
					error : function(err) { //ìëµ ì¤í¨íìë
						alert(err + " : ë±ë¡ ì¤í¨")
					}
				})//end of ajax
			});//end of idê° ì¤ë³µì²´í¬ ë¡ì§

			/* 2. ê°ìíê¸° ë²í¼ì í´ë¦­íìë student tableì ì ì¥ëë ë¡ì§	*/
			$("#btn").click(function() {
				$.ajax({
					url : "insert.do",
					type : "post",
					dataType : "text",
					data : $("#inForm").serialize(),
					success : function(data) {
						if (data == "ok") {
							alert("ê°ì ì±ê³µ");
							$("input[type=text]").val(""); //textë°ì¤ ëª¨ë ì§ì°ê¸°
							getData(); //ëª¨ë ë ì½ë ê²ìíë í¨ì í¸ì¶
						} else {
							alert("ê°ì ì¤í¨");
						}
					},
					error : function(data) {
						alert(data + ' : ê°ìë¡ì§ ì¤íì ìë¬ ë°ì');
					}
				}); //end of ajax
			})//end of ê°ìë¡ì§

		/* 3. ê°ìë ëª¨ë  íì ì ë³´ ê²ì í íë©´ì ì¶ë ¥íë ë¡ì§ */
		function getData() {
			$.ajax({
					url : "login.do",
					type : "post",
					dataType : "json", //ê²°ê³¼ë°ì´í°íì
					success : function(data) {
						var table = "";

						$(data.list).each(
								function(index, item) {
									table += "<tr><td>" + item.no + "</td><td>"
											+ item.name + "</td><td>" + item.age + "</td>";
									table += "<td>" + item.phone + "</td><td>" + item.address + "</td><td>";
									table += "<input type='button' value='ì­ì ' id='del' name='"+item.no+"'></td></tr>"
								});
						//íì´ë¸ì ì¶ê°
						$("#listTable tr:eq(0)").after(table);
					},
					error : function(err) {//ì¤í¨íìë
						alert(err + " : ëª¨ë  íì ì ë³´ë³´ê¸° ì¤í¨");
					}
				})//end of ajax
			}//end of getData()

				/* 4. ì­ì íê¸°(oní¨ìë ëì ì¼ë¡ ìì±ë ììì ì´ë²¤í¸ì ì©)
				1. ë¬¸ë² : $(document).on("ì´ë²¤í¸ì¢ë¥", ì´ë²¤í¸ëì, í¨ì); 
				2. ë¡ì§ : ëª¨ë  íì ì ë³´ ë³´ê¸° listìì ê° íìë³ "ì­ì " ë²í¼ í´ë¦­ì í´ë¹ íìì ë³´ë§ ì­ì íë ë¡ì§ 
				3. êµ¬í : ì­ì  í ê°±ì ë íì ì ë³´ ë¦¬ì¤í¸ íë©´ì ì¬ì¤í */
				$(document).on("click", "#del", function() {
					$.ajax({
						url : "delete.do",
						type : "post",
						dataType : "text",
						data : "studentNo=" + $(this).attr("name"), //ìë²ì ì ì¡í  ë°ì´í°
						success : function(data) {
							if (data == "ok") {
								alert("ì­ì  ì±ê³µ");
								getData();
							} else {
								alert("ì­ì  ì¤í¨")
							}
						},
						error : function(err) {//ì¤í¨íìë
							alert(err + " : íìì ë³´ ì­ì  ì¤í¨")
						}
					})
				});

				//ë ì½ë ê°ì ¸ì¤ê¸°ë í¨ì í¸ì¶
				getData();
			});//end of ready()
</script> -->


<body>

<nav><a href="B.do" class="focus">Log In</a> | <a href="A.do">Register</a></nav>
	<c:choose>
		<c:when test="${not empty sessionScope.userLoginInfo}">
			<h1>로그인 되어 있다능</h1>
		</c:when>
		<c:otherwise>
			<form class="register" action="loginProcess.do" method="post" name="loginProcess.do" id="inForm">
				<input type="hidden" value="login" name="command">

				<h2>LOGIN</h2>

				<input type="text" class="text-field" placeholder="아이디(이메일)" name="id" id="id" />
				<input type="password" class="text-field" placeholder="비밀번호" name="pw" id="pw" /> <br>
				<br>
				<br> <input type="submit" value="LOGIN" class="button" name="btn" id="btn" /> <br>
				<br> <a href="A.do" onclick="window.location.href=this.href; return false;">Sign Up</a>

			</form>
		</c:otherwise>
	</c:choose>


</body>
</html>