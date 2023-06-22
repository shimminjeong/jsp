<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!String id, passwd, name, email;%>
	<%
	id = request.getParameter("id");
	passwd = request.getParameter("passwd");
	name = request.getParameter("name");
	email = request.getParameter("email");
	%>

	<jsp:useBean id="member" class="com.jsplec.ex16.memberBean"
		scope="session" />
	<jsp:setProperty property="id" name="member" param="id"/>
	<%-- <jsp:setProperty property="id" name="member" value="<%=id%>" /> --%>
	<jsp:setProperty property="passwd" name="member" value="<%=passwd%>" />
	<jsp:setProperty property="name" name="member" value="<%=name%>" />
	<jsp:setProperty property="email" name="member" value="<%=email%>" />
	<a href="memberConfirm.jsp">회원정보확인</a>
</body>
</html>
