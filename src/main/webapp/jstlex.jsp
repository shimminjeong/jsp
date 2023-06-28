<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <c:set var="varName" value="심민정"/>
    varName : <c:out value="${varName}"/>
    </br>
    
    <c:remove var="varName" />
    varName 제거 : <c:out value="${varName}" />
    <hr>
    
    <c:catch var="error">
        <%= 2/0 %>
    </c:catch>
    <c:out value="${error}" />
    <hr>
    
    <c:if test="${1 + 2 != 3}">
        1 + 2 != 3
    </c:if>
    
    <c:set var="varName" value="심민정"/>
    <c:choose>
        <c:when test="${varName=='홍길이'}"> when:홍길이</c:when>
        <c:otherwise>when : 다른사람</c:otherwise>
    </c:choose>
    
    <hr>
    
    <c:forEach var="fEach" begin="0" end="30" step="5">
        ${fEach}
    </c:forEach><p>
    
    <% 
    List<String> fruits=new ArrayList<String>();
    
    fruits.add("사과");
    fruits.add("배");
    fruits.add("바나나");
    fruits.add("오렌지");
    
    pageContext.setAttribute("aFruits",fruits);
    %>
    
    
    
    <ul>
    <c:forEach var="result" items="${aFruits}">
    <li>${result}</li>
    </c:forEach><p>
    </ul>
    <hr/>
    <%
    pageContext.setAttribute("aEach","가,나,다");
    %>
    
    <ul>
    <c:forEach var="result" items="${aEach}">
    <li>${result}</li>
    </c:forEach>
    </ul>
    <hr/>
</body>
</html>