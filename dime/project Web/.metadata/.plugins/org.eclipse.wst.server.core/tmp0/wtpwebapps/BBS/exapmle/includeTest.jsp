
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <% request.setCharacterEncoding("utf-8");
   String pName = request.getParameter("pName");
 %>
   <hr>
   <jsp:include page="<%=pName%>" flush="false" >
   <jsp:param value="" name=""/>
   <jsp:param value="" name=""/>
</jsp:include>
<br>includeTest페이지의 하단 내용입니다.






</body>
</html>