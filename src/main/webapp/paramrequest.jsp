<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
    String name, id, passwd, major, protocol;
    String[] hobby;
%>

<%
    request.setCharacterEncoding("UTF-8");

    name=request.getParameter("name");
    id=request.getParameter("id");
    passwd=request.getParameter("passwd");
    major=request.getParameter("major");
    protocol=request.getParameter("protocol");
    
    hobby=request.getParameterValues("hobby");

%>

    이름&nbsp;:&nbsp<%=name %><br/>
    아이디&nbsp;:&nbsp<%=id %><br/>
    비밀번호&nbsp;:&nbsp<%=passwd %><br/>
    전공&nbsp;:&nbsp<%=major %><br/>
    프로토콜&nbsp;:&nbsp<%=protocol %><br/>
    취미&nbsp;:&nbsp<%=Arrays.toString(hobby) %><br/>
</body>
</html>