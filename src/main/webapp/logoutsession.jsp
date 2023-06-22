<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>logout</h1>
<%
    session.removeAttribute("sim");
    
	Enumeration enumeration = session.getAttributeNames();
	
	while(enumeration.hasMoreElements()) {
	    String name = enumeration.nextElement().toString();
	    String value = session.getAttribute(name).toString();
	    out.println(name+" : "+value+"<br/>");
	}
    
%>

<a href="login.html">login</a>
</body>
</html>