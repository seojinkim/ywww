<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>request.jsp</title>
</head>
<body>
	���� �����ؼ� ���ǿ� ������ ���� �� H.do ȣ���ϱ�<br>
	<%
		session.setAttribute("key", "sessionValue");
	%>
	<c:set var="key2" value="sessionTwoValue" scope="session"/>
	
	<jsp:forward page="H.do" />
</body>
</html>