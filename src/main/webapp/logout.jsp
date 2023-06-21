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
    Cookie[] cookies = request.getCookies();
    
    for (int i=0; i<cookies.length;i++){
        String str=cookies[i].getValue();
        
        if(str.equals("sim")||str.equals("7629")){
            cookies[i].setMaxAge(0); /* 쿠키 삭제 */
            response.addCookie(cookies[i]);
            
            out.println("삭제된 쿠키의 속성 이름(name["+i+"]) : "+cookies[i].getName()+"<br/>");
            out.println("삭제된 쿠키의 속성 비밀번호(passwd["+i+"]) : "+cookies[i].getValue()+"<br/>");
            out.println("---------------------------"+"<br/>");
        } 
    }
%>

<a href="login.html">login</a>
</body>
</html>