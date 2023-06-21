<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
    int age;
%>
<%
    String strage=request.getParameter("age");
    age=Integer.parseInt(strage);
    
/*     if(age>=20){
        response.sendRedirect("pass.jsp");
    } else{
        response.sendRedirect("notpass.jsp");
    } */
    
    if(age>=20){
        response.sendRedirect("pass.jsp?age="+age);
    } else{
        response.sendRedirect("notpass.jsp?age="+age);
    }
%>



</body>
</html>