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
    /* id�� �޾ƿͼ� �������� */
    /* session.removeAttribute("sim"); */
    
    
    
	/* Enumeration enumeration = session.getAttributeNames();
	
	while(enumeration.hasMoreElements()) {
	    String name = enumeration.nextElement().toString();
	    String value = session.getAttribute(name).toString();
	    out.println(name+" : "+value+"<br/>");
	}  */
	
	
	/* ���߼��ǻ��� */
    session.invalidate();
	session = request.getSession(false);
	
	if(session == null){
	    out.println("���� ���� �Ϸ�");
	} else {
	    out.println("���� ���� ����");
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