<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>세션 생성</h1>
<%
	session.setAttribute("memberId1", "admin1");
    session.setAttribute("memberId2", "admin2");
    session.setAttribute("memberId3", "admin3");
    
    session. setMaxInactiveInterval(20);

%>
<a href="sessionget.jsp">session get</a>

</body>
</html>