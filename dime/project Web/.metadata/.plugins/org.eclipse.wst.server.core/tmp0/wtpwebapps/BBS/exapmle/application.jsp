<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>application ���尴ü </h2>
<%
String info = application.getServerInfo();
String path = application.getRealPath("/");

application.log("�αױ��");

String gs = config.getServletName();


%>
���� ���� :<%=info %><br>
��� :<%=path %><br>
���� ��ü :<%=gs %>

</body>
</html>