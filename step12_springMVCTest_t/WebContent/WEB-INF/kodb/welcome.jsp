<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>welcome.jsp</title>
</head>
<body>
<h2>ȸ�� ����</h2>

	<form name="insert.do" method="post" id="inForm">
		<table cellspacing="0">
			<tr bgcolor="#FOFOF7">
				<th>���̵�</th>
				<th>��й�ȣ</th>
				<th>�̸�</th>
				<th>�̸��� ����(Y/N)</th>
			</tr>
			<tr>
				<td style="text-align: left">
					<input type="text" size="15" name="id" id="id"> <span>���̵��ߺ��������</span>
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
					<input type="button"	value="�����ϱ�" id="btn">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>