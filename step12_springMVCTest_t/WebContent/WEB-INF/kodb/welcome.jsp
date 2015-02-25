<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>

<link rel="stylesheet" href="css/style.css" />

</head>
<script src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document)	.ready(function() {
			$("#btn2").click(function() {
				$.ajax({
					url : "idCheck.do", //서버에 요청할 정보123
					type : "post", //method방식
					dataType : "text", //응답되는 데이터 타입
					data : "id=" + $("#id").val(), //서버에 전송할 데이터
					success : function(data) { //응답 성공
						alert(data);
						$("span").html(data);
					},
					error : function(err) { //응답 실패했을때
						alert(err + " : 등록 실패")
					}
				})//end of ajax
			});//end of id값 중복체크 로직

			/* 2. 가입하기 버튼을 클릭했을때 student table에 저장되는 로직	*/
			$("#btn").click(function() {
				$.ajax({
					url : "insert.do",
					type : "post",
					dataType : "text",
					data : $("#inForm").serialize(),
					success : function(data) {
						if (data == "ok") {
							alert("가입 성공");
							$("input[type=text]").val(""); //text박스 모두 지우기
							getData(); //모든레코드 검색하는 함수 호출
						} else {
							alert("가입 실패");
						}
					},
					error : function(data) {
						alert(data + ' : 가입로직 실행시 에러 발생');
					}
				}); //end of ajax
			})//end of 가입로직

		/* 3. 가입된 모든 학생 정보 검색 후 화면에 출력하는 로직 */
		function getData() {
			$.ajax({
					url : "select.do",
					type : "post",
					dataType : "json", //결과데이터타입
					success : function(data) {
						var table = "";
						//기존에 있는 테이블 첫행만 빼고 지우기
						//http://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_sel_gt
						$("#listTable tr:gt(0)").remove();

						$(data.list).each(
								function(index, item) {
									table += "<tr><td>" + item.no + "</td><td>"
											+ item.name + "</td><td>" + item.age + "</td>";
									table += "<td>" + item.phone + "</td><td>" + item.address + "</td><td>";
									table += "<input type='button' value='삭제' id='del' name='"+item.no+"'></td></tr>"
								});
						//테이블에 추가
						$("#listTable tr:eq(0)").after(table);
					},
					error : function(err) {//실패했을때
						alert(err + " : 모든 학생 정보보기 실패");
					}
				})//end of ajax
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

<nav><a href="B.do">Log In</a> | <a href="#" class="focus">Register</a></nav>

<form class="register" name="insert.do" method="post" id="inForm">
   <h2>Register</h2>
    <input type="text" class="text-field" placeholder="아이디(이메일)" name="id" id="id" />
    <input type="button" value="중복 확인" class="button2" name="btn2" id="btn2" />
    <input type="password" class="text-field" placeholder="비밀번호" name="pw" id="pw" />
    <input type="text" class="text-field" placeholder="이름" name="name" id="name" />
    <input type="text" class="text-field" placeholder="전화번호" name="phone" id="phone" />
    <br>
    <input type="button" value="등록" class="button" id="btn" />

</form>

</body>
</html>