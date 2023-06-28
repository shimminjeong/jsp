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
    <c:set var="varName" value="�ɹ���"/>
    varName : <c:out value="${varName}"/>
    </br>
    
    <c:remove var="varName" />
    varName ���� : <c:out value="${varName}" />
    <hr>
    
    <c:catch var="error">
        <%= 2/0 %>
    </c:catch>
    <c:out value="${error}" />
    <hr>
    
    <c:if test="${1 + 2 != 3}">
        1 + 2 != 3
    </c:if>
    
    <c:set var="varName" value="�ɹ���"/>
    <c:choose>
        <c:when test="${varName=='ȫ����'}"> when:ȫ����</c:when>
        <c:otherwise>when : �ٸ����</c:otherwise>
    </c:choose>
    
    <hr>
    
    <c:forEach var="fEach" begin="0" end="30" step="5">
        ${fEach}
    </c:forEach><p>
    
    <% 
    List<String> fruits=new ArrayList<String>();
    
    fruits.add("���");
    fruits.add("��");
    fruits.add("�ٳ���");
    fruits.add("������");
    
    pageContext.setAttribute("aFruits",fruits);
    %>
    
    
    
    <ul>
    <c:forEach var="result" items="${aFruits}">
    <li>${result}</li>
    </c:forEach><p>
    </ul>
    <hr/>
    <%
    pageContext.setAttribute("aEach","��,��,��");
    %>
    
    <ul>
    <c:forEach var="result" items="${aEach}">
    <li>${result}</li>
    </c:forEach>
    </ul>
    <hr/>
</body>
</html>