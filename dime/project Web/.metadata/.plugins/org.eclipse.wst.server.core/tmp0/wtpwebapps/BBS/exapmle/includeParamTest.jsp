<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,inital-scale=1.0"/>

<meta charset="EUC-KR">
<title>JSP PARAM action tag</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String name = "ȫ�浿";
String pageName = "includedParamTest.jsp";
%>
<br> �����ϴ� ������ includeParamTest.jsp �Դϴ�. <br>
���ԵǴ� includeParamTest.jsp �������� �Ķ���Ͱ��� �����Ѵ�.
<hr>
<jsp:include page="<%=pageName%>" flush="false">
<jsp:param value="<%=name%>" name="name"/>
<jsp:param value="<%=pageName %>" name="pageName"/>
</jsp:include>
includePARAMTEST.JSP �� ������ �����Դϴ�.
</body>
</html>