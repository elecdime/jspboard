<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>application 내장객체 </h2>
<%
String info = application.getServerInfo();
String path = application.getRealPath("/");

application.log("로그기록");

String gs = config.getServletName();


%>
서버 정보 :<%=info %><br>
경로 :<%=path %><br>
서블릿 객체 :<%=gs %>

</body>
</html>