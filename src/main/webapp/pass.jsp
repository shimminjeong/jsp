<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>����߾��</h1>
	<%!
	    int age;
	%>
	<%
	    String strage=request.getParameter("age");
	    age=Integer.parseInt(strage);
	%>
	����� ���̴�&nbsp;<%= age %>���� �����Դϴ�.<br/>
	<a href="requestex.html">ó������</a>


</body>
</html>