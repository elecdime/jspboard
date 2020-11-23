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

String name = "홍길동";
String pageName = "includedParamTest.jsp";
%>
<br> 포함하는 페이지 includeParamTest.jsp 입니다. <br>
포함되는 includeParamTest.jsp 페이지에 파라미터값을 전달한다.
<hr>
<jsp:include page="<%=pageName%>" flush="false">
<jsp:param value="<%=name%>" name="name"/>
<jsp:param value="<%=pageName %>" name="pageName"/>
</jsp:include>
includePARAMTEST.JSP 의 나머지 내용입니다.
</body>
</html>