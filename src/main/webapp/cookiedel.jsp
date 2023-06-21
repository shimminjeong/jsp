<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    
    for (int i=0; i<cookies.length;i++){
        String str=cookies[i].getName();
        
        if(str.equals("cookieN")){
            cookies[i].setMaxAge(0); /* 쿠키 삭제 */
            response.addCookie(cookies[i]);
            
            out.println("삭제된 쿠키의 속성 이름(name["+i+"]) : "+cookies[i].getName()+"<br/>");
            out.println("삭제된 쿠키의 속성 값(value["+i+"]) : "+cookies[i].getValue()+"<br/>");
            out.println("---------------------------"+"<br/>");
        } 
    }
%>
<a href="cookieset.jsp">cookie set</a>
</body>
</html>