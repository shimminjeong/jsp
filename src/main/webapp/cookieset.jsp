<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie=new Cookie("cookieN","cookieV");
    Cookie logininfo=new Cookie("sim","7629");
	cookie.setMaxAge(60*60); // 1시간
	logininfo.setMaxAge(60*60); // 1시간
	response.addCookie(cookie);
	response.addCookie(logininfo);
%>
<a href="cookieget.jsp">cookie get</a>

</body>
</html>