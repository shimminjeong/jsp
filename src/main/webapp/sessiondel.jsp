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
<h1>技记 昏力</h1>
<%
    /* 窜老 技记 昏力 */
    session.removeAttribute("memberId1");
    /* session.removeAttribute("memberId2"); */
    /* session.removeAttribute("memberId3"); */
    
    
    Enumeration enumeration = session.getAttributeNames();
    
    while(enumeration.hasMoreElements()) {
        String name = enumeration.nextElement().toString();
        String value = session.getAttribute(name).toString();
        out.println(name+" : "+value+"<br/>");
    }
    
    
    
    /* 促吝 技记 昏力 */
    session.invalidate();
    if(request.isRequestedSessionIdValid()){
        out.println("session valid"+"<br/>");
    } else {
        out.println("session invalid"+"<br/>");
    }

%>
<a href="sessionget.jsp">session get</a>
</body>
</html>