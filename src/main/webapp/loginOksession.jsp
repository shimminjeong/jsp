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
    String id, passwd;
%>
<%

	id=request.getParameter("id");
	passwd=request.getParameter("passwd");
    
    request.setCharacterEncoding("UTF-8");

    if(id.equals("sim") && passwd.equals("7629")){
        session.setAttribute(id, passwd);
        /* <jsp:forward page="welcome.jsp"></jsp:forward> */
        response.sendRedirect("welcomesession.jsp");

    }else{
        response.sendRedirect("login.html");
        /* <jsp:forward page="login.jsp"></jsp:forward> */
    }
%> 


</body>
</html>