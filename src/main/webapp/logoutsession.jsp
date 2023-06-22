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
    /* id를 받아와서 지워보자 */
    /* session.removeAttribute("sim"); */
    
    
    
	/* Enumeration enumeration = session.getAttributeNames();
	
	while(enumeration.hasMoreElements()) {
	    String name = enumeration.nextElement().toString();
	    String value = session.getAttribute(name).toString();
	    out.println(name+" : "+value+"<br/>");
	}  */
	
	
	/* 다중세션삭제 */
    session.invalidate();
	session = request.getSession(false);
	
	if(session == null){
	    out.println("세션 삭제 완료");
	} else {
	    out.println("세션 아직 있음");
	}
    /* if(request.isRequestedSessionIdValid()){
        out.println("session valid"+"<br/>");
    } else {
        out.println("session invalid"+"<br/>");
    } */
    
%>

<a href="login.html">login</a>
</body>
</html>