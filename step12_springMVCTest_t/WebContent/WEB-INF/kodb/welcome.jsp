<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>welcome.jsp</title>
</head>
<body>
<h2>회원 가입</h2>

	<form name="insert.do" method="post" id="inForm">
		<table cellspacing="0">
			<tr bgcolor="#FOFOF7">
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일 인증(Y/N)</th>
			</tr>
			<tr>
				<td style="text-align: left">
					<input type="text" size="15" name="id" id="id"> <span>아이디중복결과여부</span>
				</td>
				<td>
					<input type="text" size="8" name="pw" id="pw">
				</td>
				<td>
					<input type="text" size="8" name="name" id="name">
				</td>
				<td>
					<input type="text" size="12" name="confirm" id="confirm">
				</td>
			</tr>
			<tr>
				<td colspan="5" align="center">
					<input type="button"	value="가입하기" id="btn">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>