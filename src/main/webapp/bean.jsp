<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="com.jsplec.ex16.Student" scope="page" />
    <jsp:setProperty property="name" name="student" value="심민정"/>
    <jsp:getProperty property="name" name="student"/>
</body>
</html>