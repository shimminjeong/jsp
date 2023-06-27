<%@page import="com.jsplec.ex23.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%-- EL 표현 --%>
    <% 
    MemberInfo member = new MemberInfo("심민정짱", "test", "1234","pooh5045@naver.com");
        pageContext.setAttribute("member", member); // member 객체를 page 범위에 저장
    %>
    이름: ${member.name}<br/>
    아이디: ${member.id}<br/>
    비밀번호: ${member.password}<br/>
    이메일: ${member.email}<br/>
</body>]
</html>