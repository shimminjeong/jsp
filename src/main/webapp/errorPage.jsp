<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>에러처리페이지</h1>

<%= exception.getMessage() %>
<error-page>
    <error-code>300</error-code> | <exception-type>

</body>
</html>