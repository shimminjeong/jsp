<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="member" class="com.jsplec.ex16.memberBean" scope="session"/>
    <jsp:getProperty property="id" name="member" />
    <jsp:getProperty property="passwd" name="member" />
    <jsp:getProperty property="name" name="member" />
    <jsp:getProperty property="email" name="member" />

</body>
</html>