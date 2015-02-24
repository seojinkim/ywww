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
		width: 100%
	}
	
	th,td {
		border: 1px gray solid;
		text-align: center;
		padding: 3px
	}
	
	h2,h3 {
		text-align: center
	}
</style>

<script src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document)	.ready(function() {
		/* 3. 가입된 모든 학생 정보 검색 후 화면에 출력하는 로직 */
		function getData() {
			$.ajax({
					url : "selectWish.do",
					type : "post",
					dataType : "json", //결과데이터타입
					success : function(data) {
						var table = "";
						$("#listTable tr:gt(0)").remove();

						$(data.list).each(
								function(index, item) {
									table += "<tr><td>" + item.id + "</td><td>"
											+ item.festivalNum + "</td><td>";
									table += "<input type='button' value='삭제' id='del' name='"+item.id+"'></td></tr>"
								});
						//테이블에 추가
						$("#listTable tr:eq(0)").after(table);
					},
					error : function(err) {//실패했을 때
						alert(err + " : fail");
					}
				}) //end of ajax
			}//end of getData()

				/* 4. 삭제하기(on함수는 동적으로 생성된 요소에 이벤트적용)
				1. 문법 : $(document).on("이벤트종류", 이벤트대상, 함수); 
				2. 로직 : 모든 학생 정보 보기 list에서 각 학생별 "삭제" 버튼 클릭시 해당 학생정보만 삭제하는 로직 
				3. 구현 : 삭제 후 갱신된 학생 정보 리스트 화면에 재실행 */
				$(document).on("click", "#del", function() {
					$.ajax({
						url : "delete.do",
						type : "post",
						dataType : "text",
						data : "studentNo=" + $(this).attr("name"), //서버에 전송할 데이터
						success : function(data) {
							if (data == "ok") {
								alert("삭제 성공");
								getData();
							} else {
								alert("삭제 실패")
							}
						},
						error : function(err) {//실패했을때
							alert(err + " : 학생정보 삭제 실패")
						}
					})
				});

				//레코드 가져오기는 함수 호출
				getData();
			});//end of ready()
</script>

<body>
	<table id="listTable" cellspacing="0">
		<tr bgcolor="#FOFOF7">
			<th>id</th>
			<th>festivalNum</th>
		</tr>
	</table>
	
       <!-- <div class="entry-meta" table id="listTable">
           <span id="publish_date">07  NOV</span>
           <span><i class="fa fa-user"></i> <a href="#"> Id</a></span>
           <span><i class="fa fa-comment"></i> <a href="blog-item.html#comments">Festival</a></span>
           <span><i class="fa fa-heart"></i><a href="#">56 Likes</a></span>
       </div> -->
   
</body>
</html>