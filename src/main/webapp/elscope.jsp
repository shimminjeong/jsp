<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <form action="elscopeOk.jsp" method="post">
      ���̵�: <input type="text" name="id"><br /> 
      ��й�ȣ: <input type="password" name="pw"><br /> 
      <input type="submit" value="login">
   </form>

   <%
   application.setAttribute("application_name", "application_value");
   session.setAttribute("session_name", "session_value");
   pageContext.setAttribute("page_name", "page_value");
   request.setAttribute("request_name", "request_value");
   %>
   <p>
   <p>
   <hr />

   pageScope : ${pageScope.page_name}<br />
   requestScope : ${requestScope.request_name}<br />
   
</body>
</html>