<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String name = request.getParameter("name") ;%>
포함되는 페이지 includedtest.jsp<p>
<b><%=name %></b> 님 ㅎㅇ


</body>
</html>