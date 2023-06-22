
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>welcome</h1>
<%!
    String id, passwd;
%>
<%

/* 쿠키생성 */
	

    Cookie[] cookies = request.getCookies();
    /* 모든 쿠키를 다룰 수 있음
       저장된 모든 쿠키 다 보낼 수 있음 배열로*/
    out.println("원래 설정된 쿠키의 개수 => "+cookies.length+"<br/>");
    out.println("---------------------------"+"<br/>");
    
    for (int i=0; i<cookies.length;i++){
        out.println("설정된 쿠키의 속성 이름(name["+i+"]) : "+cookies[i].getName()+"<br/>");
        out.println("설정된 쿠키의 속성 값(value["+i+"]) : "+cookies[i].getValue()+"<br/>");
        out.println("---------------------------"+"<br/>");
    }
    

%>
<br/>
<a href="logout.jsp">logout</a>

</body>
</html>