
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

/* ��Ű���� */
	

    Cookie[] cookies = request.getCookies();
    /* ��� ��Ű�� �ٷ� �� ����
       ����� ��� ��Ű �� ���� �� ���� �迭��*/
    out.println("���� ������ ��Ű�� ���� => "+cookies.length+"<br/>");
    out.println("---------------------------"+"<br/>");
    
    for (int i=0; i<cookies.length;i++){
        out.println("������ ��Ű�� �Ӽ� �̸�(name["+i+"]) : "+cookies[i].getName()+"<br/>");
        out.println("������ ��Ű�� �Ӽ� ��(value["+i+"]) : "+cookies[i].getValue()+"<br/>");
        out.println("---------------------------"+"<br/>");
    }
    

%>
<br/>
<a href="logout.jsp">logout</a>

</body>
</html>