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
<h1>세션 삭제</h1>
<%
    /* 단일 세션 삭제 */
    session.removeAttribute("memberId1");
    session.removeAttribute("memberId2");
    /* session.removeAttribute("memberId3"); */
    
    if (session != null){
	    Enumeration enumeration = session.getAttributeNames();
	    while(enumeration.hasMoreElements()) {
	        String name = enumeration.nextElement().toString();
	        String value = session.getAttribute(name).toString();
	        out.println(name+" : "+value+"<br/>");
	    }
    }else{
        out.println("세션이 null");
    }
    
    
    /* 다중 세션 삭제 */
    /* session.invalidate(); */

%>

</body>
</html>