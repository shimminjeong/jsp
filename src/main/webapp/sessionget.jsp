<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>세션 정보 확인</h1>

<%
/*     String id = (String)session.getAttribute("memberId1"); */

	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()) {
		String name = enumeration.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name+" : "+value+"<br/>");
	}
	
	SimpleDateFormat dateformat=new SimpleDateFormat("HH:mm:ss");
	
	long creationTime=session.getCreationTime();
	String creationTimeStr=dateformat.format(new Date(creationTime));
	
	long lastTime=session.getLastAccessedTime();
	String lastTimeStr=dateformat.format(new Date(lastTime));
	
	/* out.println("세션유지시간 : "+session.getMaxI) */
	
	
%>
<a href="sessiondel.jsp">session del</a>

</body>
</html>
